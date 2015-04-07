import glob
import os

dir = raw_input("enter folder name : ")

ONF_HD = open("all_files.txt", 'w')

for fldr in glob.glob(dir+"\\*"):
    if fldr[-4:].lower() == '.txt':
        INP_HD = open(fldr, 'r')
        text = INP_HD.read().strip();
        INP_HD.close()

        ONF_HD.write("%s\n" %text)

ONF_HD.close()        
