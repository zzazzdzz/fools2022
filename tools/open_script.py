import sys
import os

import win32gui
import win32con

hwnd = win32gui.GetForegroundWindow()
win32gui.ShowWindow(hwnd, 0)

x = sys.argv[1].replace("\\","/").split("/")
x.reverse()
for d in x:
    if d.startswith("x"):
        map_name = d[1:]
        os.system("envc && utf && cd /d w:\\code\\fools2022 && python tools\\map_compiler.py %s --fixup" % map_name)
        os.system("envc && utf && cd /d w:\\code\\fools2022 && python tools\\map_compiler.py %s" % map_name)
        os.system("\"w:\\code\\fools2022\\scripts\\%s.s\"" % map_name)