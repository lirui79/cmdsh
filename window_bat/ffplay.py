#!/usr/bin/python3


import sys, getopt
import argparse
import time
import re
import os

#res_91_1_A6_out352_288_10yuv0_12.yuv    -s 352x288 -pix_fmt yuv420p10le
def ffplay_yuv(argv):
    print(argv)
    yuvfile = argv
    print(yuvfile)
    #matchObj = re.match( r'res_(.*)_(.*)_(.*)_out(.*)_(.*)_(.*)yuv(.*)_(.*).yuv', yuvfile, re.M|re.I)
    matchObj = re.search( r'_out(.*)_(.*)_(.*)yuv(.*)_(.*).yuv', yuvfile, re.I)
    if matchObj:
       print('0:' + matchObj.group())
       for i in range(1,6):
           print(str(i) + ':' + matchObj.group(i))
    else:
        print('nothing')

    cmd  = 'ffplay -s ' + matchObj.group(1) + 'x' + matchObj.group(2) + ' '
    if matchObj.group(3) == '10':
        cmd += ' -pix_fmt yuv420p10le '
    cmd += yuvfile
    print(cmd)
    os.system(cmd)


def ffplay_bin(argv):
    print(argv)
    binfile = argv;
    cmd  = 'ffplay '
    cmd += binfile
    os.system(cmd)

def ffplay(argv):
    print(argv)
    fileName = argv[1]
    print(fileName)
    if fileName.find('.yuv') >= 0:
        ffplay_yuv(fileName)
    
    if fileName.find('.h26') >= 0:
        ffplay_bin(fileName)



if __name__ == "__main__":
   ffplay(sys.argv)