import glob
import os

dir = raw_input("enter folder name : ")

for fldr in glob.glob(dir+"\\*"):
    if fldr[-4:].lower() == '.txt':
        INP_HD = open(fldr, 'r')
        line = INP_HD.readlines();
        INP_HD.close()

        INP_HD = open(fldr, 'r')
        word = INP_HD.read().split();
        INP_HD.close()

        print os.path.basename(fldr)
        print "number of line %d" %len(line)
        print "number of word %d" %len(word)
        
