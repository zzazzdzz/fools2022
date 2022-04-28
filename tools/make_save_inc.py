import sys

out_script = []
def outs(l=None):
    if l is None:
        l = ""
    out_script.append(l)

outs("# fools2022 - autogenerated, please do not change!")
outs()

for line in sys.stdin:
    if ".text\t" in line:
        r = line.strip().split(" ")
        if r[-1] == ".text": continue
        outs(".equ %s, 0x%s" % (r[-1], r[0]))
outs()

with open("include/save.inc", "w") as f:
    f.write("\n".join(out_script))