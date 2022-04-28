# coding: utf-8

import tkinter
import threading
import os
import urllib.error
import json

import request

from tkinter import messagebox

PAD = " " * 10

def runInUiThread(f):
    top.after(1, f)

def showMessageAndEnableButton(x):
    def f():
        messagebox.showerror("Error", x)
        btnLogin.config(state="normal")
    return f

def showWarningInUIThread(x):
    def f():
        messagebox.showwarning("Connection lost", x)
    runInUiThread(f)
    
def loginSuccessful():
    frmLogin.pack_forget()
    frmStatus.pack(side=tkinter.TOP, expand=True)

_cur_status = ""
def updateStatus(x):
    global _cur_status
    if _cur_status == x: return
    def f():
        lblStatus.config(text='Status: %s' % x)
    runInUiThread(f)
    _cur_status = x

_logged_in = False

def tryLogin():
    try:
        if not (txtUsername.get().strip() and txtPassword.get().strip()):
            runInUiThread(showMessageAndEnableButton("All fields must be filled in."))
        else:
            resp = request.login(txtUsername.get(), txtPassword.get())
            if resp['error']:
                runInUiThread(showMessageAndEnableButton("An error occured: %s" % resp['message']))
            else:
                request.sessid = resp['data']['session']
                request.uid = resp['data']['uid']
                _logged_in = True
                runInUiThread(loginSuccessful)
    except urllib.error.HTTPError as err:
        try:
            resp = json.loads(err.read())
            runInUiThread(showMessageAndEnableButton("An error occured: %s" % resp['msg']))
        except:
            runInUiThread(showMessageAndEnableButton("An unknown server error has occured. This is probably our fault. Please try again once we hopefully fix it!"))
    except urllib.error.URLError:
        runInUiThread(showMessageAndEnableButton("Couldn't connect to the server. Please try again later."))
    except Exception as e:
        runInUiThread(showMessageAndEnableButton("An unknown error occured: %s." % repr(e)))

def btnLoginCallback():
    if _logged_in: return
    btnLogin.config(state="disabled")
    threading.Thread(target=tryLogin).start()

def keyLoginCallback(evt):
    if _logged_in: return
    btnLoginCallback()

top = tkinter.Tk()
top.title("TheZZAZZGlitch April Fools Event 2022: Return to Glitchland")
top.resizable(width=False, height=False)
top.geometry("550x290")
top.bind('<Return>', keyLoginCallback)
top.tk_setPalette(background="#fdffeb")

bgPath = "%s/glitchland.png" % os.path.dirname(os.path.realpath(__file__))

bg = tkinter.PhotoImage(file=bgPath)
lblImage = tkinter.Label(top, image=bg)
lblImage.place(x=-2, y=-2)

frmLogin = tkinter.Frame(top)
frmLogin.pack(side=tkinter.TOP, expand=True)
frmStatus = tkinter.Frame(top)

lblInfo = tkinter.Label(frmLogin, text="\n".join([
    "Welcome to Glitchland. Log in using your credentials",
    "from the event site to get started."
]), font="Tahoma 10")
lblInfo.pack(side=tkinter.TOP, padx=10, pady=10)

frmUsername = tkinter.Frame(frmLogin)
frmUsername.pack(side=tkinter.TOP)
frmPassword = tkinter.Frame(frmLogin)
frmPassword.pack(side=tkinter.TOP)

lblUsername = tkinter.Label(frmUsername, text='Username: ', font="Tahoma 10", width=12)
lblUsername.pack(side=tkinter.LEFT, pady=2)
txtUsername = tkinter.Entry(frmUsername, font="Tahoma 10", bg="white")
txtUsername.pack(side=tkinter.RIGHT, expand=tkinter.YES, fill=tkinter.X)

lblPassword = tkinter.Label(frmPassword, text='Password: ', font="Tahoma 10", width=12)
lblPassword.pack(side=tkinter.LEFT, pady=4)
txtPassword = tkinter.Entry(frmPassword, font="Tahoma 10", show="*", bg="white")
txtPassword.pack(side=tkinter.RIGHT, expand=tkinter.YES, fill=tkinter.X)

btnLogin = tkinter.Button(frmLogin, text=PAD+"Login"+PAD, command=btnLoginCallback, font="Tahoma 10 bold", bg="#dcdcdc")
btnLogin.pack(side=tkinter.TOP, padx=5, pady=5)

lblSuccess = tkinter.Label(frmStatus, text="\n".join([
    "You have successfully logged in.",
    "Connect to localhost (127.0.0.1) with your mGBA/VBA-M",
    "emulator to start playing! Refer to the instructions on",
    "the event site for any further information."
]), font="Tahoma 10")
lblSuccess.pack(side=tkinter.TOP, padx=10, pady=10)

lblStatus = tkinter.Label(frmStatus, text='Status: Awaiting connection', font="Tahoma 12 bold")
lblStatus.pack(side=tkinter.TOP, padx=10, pady=10)

def start():
    top.mainloop()
    os._exit(0)
