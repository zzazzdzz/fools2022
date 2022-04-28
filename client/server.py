import os
import sys
import struct
import time
import random

import util
import request
import gui
import threading
import traceback

import socket
import socketserver

data_sock_c = None
clock_sock_c = None
data_sock_await = True
clock_sock_await = True
joybus_running = False

sock_barrier = threading.Barrier(2, timeout=60)

STATE_HANDSHAKE_FIRST = 1
STATE_HANDSHAKE_SECOND = 2
STATE_HANDSHAKE_RESPONSE_FIRST = 3
STATE_HANDSHAKE_RESPONSE_SECOND = 4
STATE_READ_PACKET_LENGTH = 5
STATE_READ_PACKET_DATA = 6
STATE_PROCESS_PACKET = 7
STATE_WRITE_RESPONSE_LENGTH = 8
STATE_WRITE_RESPONSE_DATA = 9

last_clk = 0
second = 16780000 + 69000

def read_word_ratelimit(as_bytes=False):
    time.sleep(0.005)
    return read_word(as_bytes=as_bytes)

def send_word_ratelimit(x):
    time.sleep(0.005)
    return send_word(x)

def read_word(as_bytes=False):
    global last_clk
    clk = int((time.time() - last_clk) * second)
    last_clk = time.time()
    st_clk = struct.pack(">i", clk)
    st_data = b'\x14'
    # print("clock := %s" % st_clk)
    clock_sock_c.sendall(st_clk)
    # print("data  := %s" % st_data)
    data_sock_c.sendall(st_data)
    resp = data_sock_c.recv(5)
    if as_bytes: return resp[0:4]
    else: return struct.unpack("<I", resp[0:4])[0]

def send_word(x):
    global last_clk
    clk = int((time.time() - last_clk) * second)
    last_clk = time.time()
    st_clk = struct.pack(">i", clk)
    st_data = struct.pack("<BI", 0x15, x)
    # print("clock := %s" % st_clk)
    clock_sock_c.sendall(st_clk)
    # print("data  := %s" % st_data)
    data_sock_c.sendall(st_data)
    resp = data_sock_c.recv(1)
    return resp[0]

def joybus_handler():
    global last_clk, data_sock_c, clock_sock_c
    last_clk = time.time()
    debug_cmds = (0, 0)
    cur_state = STATE_HANDSHAKE_FIRST
    cur_packet = []
    last_recv = time.time()
    cut = []
    packet_len = 0
    while 1:
        now = time.time()
        if now - last_recv > 5:
            print("delay too large, resetting communication")
            cur_state = STATE_HANDSHAKE_FIRST
        last_recv = now

        if cur_state == STATE_HANDSHAKE_FIRST:
            gui.updateStatus("Ready to serve requests")
            r = read_word()
            # print("idle read word: %.8x" % r)
            if r == 0xbe5015ff:
                cur_state = STATE_HANDSHAKE_SECOND
            time.sleep(0.05)
        
        elif cur_state == STATE_HANDSHAKE_SECOND:
            gui.updateStatus("JoyBus: Performing handshake...")
            r = read_word()
            if r == 0xffbe5015:
                cur_state = STATE_HANDSHAKE_RESPONSE_FIRST
            time.sleep(0.05)

        elif cur_state == STATE_HANDSHAKE_RESPONSE_FIRST:
            send_word_ratelimit(0x000f0015)
            cur_state = STATE_HANDSHAKE_RESPONSE_SECOND
            time.sleep(0.05)
                
        elif cur_state == STATE_HANDSHAKE_RESPONSE_SECOND:
            if debug_cmds[1] != 0:
                send_word_ratelimit(0x420b00b5)
                send_word_ratelimit(debug_cmds[0])
                send_word_ratelimit(debug_cmds[1])
                debug_cmds = (0,0)
            else:
                send_word_ratelimit(0x20221337)
            cur_state = STATE_READ_PACKET_LENGTH
            time.sleep(0.05)

        elif cur_state == STATE_READ_PACKET_LENGTH:
            gui.updateStatus("JoyBus: Reading packet data...")
            packet_len = read_word()
            print("len=%i" % packet_len)
            if packet_len > 0:
                cur_packet = []
                cur_state = STATE_READ_PACKET_DATA
            time.sleep(0.05)

        elif cur_state == STATE_READ_PACKET_DATA:
            cur_packet.append(read_word_ratelimit(as_bytes=True))
            packet_len -= 1
            if packet_len <= 0:
                cur_packet = b"".join(cur_packet)
                print("packet: %s" % cur_packet)
                gui.updateStatus("JoyBus: Waiting for backend...")
                request.send_to_backend(cur_packet)
                test = 0
                cur_state = STATE_PROCESS_PACKET
        
        elif cur_state == STATE_PROCESS_PACKET:
            if request.lock.locked():
                send_word(0xfef0cec0)
            else:
                if not request.success:
                    send_word(0xfff0ff0f)
                    cur_state = STATE_HANDSHAKE_FIRST
                else:
                    cur_packet = request.result
                    while len(cur_packet) % 4 != 0:
                        # very inefficient NotLikeThis
                        cur_packet += b'\x00'
                    if len(cur_packet) == 0:
                        cur_packet = b'....'
                    send_word(0xcaceface)
                    cur_state = STATE_WRITE_RESPONSE_LENGTH
            time.sleep(0.05)

        elif cur_state == STATE_WRITE_RESPONSE_LENGTH:
            gui.updateStatus("JoyBus: Sending response...")
            print("sending response...")
            cut = [struct.unpack("<I", cur_packet[i:i+4])[0] for i in range(0, len(cur_packet), 4)]
            send_word(len(cut) + request.server_protocol_version * 0x01000000)
            cur_state = STATE_WRITE_RESPONSE_DATA
            time.sleep(0.05)

        elif cur_state == STATE_WRITE_RESPONSE_DATA:
            send_word(cut[0])
            cut = cut[1:]
            if len(cut) <= 0:
                print("done")
                cur_state = STATE_HANDSHAKE_FIRST

        else:
            print("INVALID STATE")


class JoyBusClockServer(socketserver.BaseRequestHandler):
    def handle(self):
        global clock_sock_c, clock_sock_await, joybus_running
        if joybus_running:
            self.request.close()
            return
        clock_sock_c = self.request
        clock_sock_await = False
        gui.updateStatus("Awaiting data connection...")
        sock_barrier.wait()
        # this thread is the master
        # at this point both sockets should be up
        gui.updateStatus("Starting JoyBus communication...")
        joybus_running = True
        data_sock_c.settimeout(1)
        clock_sock_c.settimeout(1)
        try:
            joybus_handler()
        except Exception as e:
            traceback.print_exc()
        try:
            data_sock_c.close()
        except:
            pass
        try:
            clock_sock_c.close()
        except:
            pass
        gui.showWarningInUIThread("Warning: Disconnected from the emulator")
        data_sock_await = True
        clock_sock_await = True
        sock_barrier.reset()
        joybus_running = False
        gui.updateStatus("Awaiting connection")

class JoyBusDataServer(socketserver.BaseRequestHandler):
    def handle(self):
        global data_sock_c, data_sock_await, joybus_running
        if joybus_running:
            self.request.close()
            return
        data_sock_c = self.request
        data_sock_await = False
        gui.updateStatus("Awaiting clock connection...")
        sock_barrier.wait()
        # this thread has served its purpose and can just wait
        time.sleep(1)
        while joybus_running:
            time.sleep(0.05)

def _server_thread_clock():
    server = socketserver.ThreadingTCPServer(('127.0.0.1', 49420), JoyBusClockServer)
    server.serve_forever()

def _server_thread_data():
    server = socketserver.ThreadingTCPServer(('127.0.0.1', 54970), JoyBusDataServer)
    server.serve_forever()
	
def start():
    threading.Thread(target=_server_thread_clock).start()
    threading.Thread(target=_server_thread_data).start()
