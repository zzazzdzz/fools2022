import sys

for line in sys.stdin:
    if "R_ARM_" in line and " .text" not in line:
        print("unexpected relocation in ELF file! could not find symbol")
        print(line.strip())
        sys.exit(1)
