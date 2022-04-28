tot = 0
with open('achievements.txt', 'r') as f:
    for i in f.readlines():
        try:
            i = i.split(" ")[0]
            tot += int(i)
            print(i)
        except:
            pass

print(tot)