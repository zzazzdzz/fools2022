import os
import glob

for i in glob.glob("pokeemerald/data/maps/x*"):
    print(i)
    i = i.split("\\")[-1].split("/")[-1][1:]
    if not os.path.exists("scripts/%s.s" % i):
        print("warning: %s excluded" % i)
        continue
        '''with open("scripts/%s.s" % i, 'w') as f:
            sn = i.split("_", 1)[-1].replace("-","_")
            f.write("%s_MapInitCode:\n    bx lr\n\n%s_MapInitScript:\n    end\n\n" % (sn,sn))'''
    os.system("python tools/map_compiler.py %s" % i)