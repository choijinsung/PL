# hw1.py

f1=open("input.txt","r")
f2=open("output.txt","w")

words=f1.read().split()

for i in words:
    f2.write("%s\n" %i)

f1.close()
f2.close()
