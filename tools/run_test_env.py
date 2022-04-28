import os
import sys
import time

import win32gui
import win32con

try:
    hwnd = win32gui.GetForegroundWindow()

    os.system("start /min cmd /c envc ^&^& cd /d w:/code/fools2022/server ^&^& python main.py")

    time.sleep(0.2)
    try:
        win32gui.SetForegroundWindow(hwnd)
    except:
        pass

    os.chdir("w:/code/fools2022")
    r = os.system("envc && make")
    if r != 0:
        os.system("pause")
        os.system("taskkill /f /im python.exe")
        sys.exit(1)

    win32gui.ShowWindow(hwnd, win32con.SW_MINIMIZE)

    os.system("envc && rdy mgba")
    os.system("taskkill /f /im python.exe")
except:
    import traceback
    traceback.print_exc()
    input()