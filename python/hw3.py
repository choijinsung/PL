import glob
import os
import sys
import re

if len(sys.argv)!=4 or sys.argv[1] != "grep" :
    print "reenter command"
    sys.exit()

string = sys.argv[2]
fldr = sys.argv[3]

if os.path.isdir(fldr):
    for fname in glob.glob(fldr+"\\*"): 
        if fname[-4:].lower() == '.txt':
            INP_HD = open(fname, 'r')
            lines = INP_HD.readlines()
            INP_HD.close()

            p = re.compile('.*%s.*' %string)
            for line in lines:
                m = p.match(line)
                if m:
                    print m.group()

elif os.path.isfile(fldr):
    INP_HD = open(fname, 'r')
    lines = readlines()
    INP_HD.close()

    p = re.compile('.*%s.*' %string)
    for line in lines:
        m = p.match(line)
        if m:
            print m.group()

else:
    print "reenter folder or file name"
    sys.exit()
