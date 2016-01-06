#-*- coding: utf-8 -*-
import argparse
import os
from biplist import *


addList = {'CFBundleIdentifier': 'com.mycomp.myapp',
            'NSHumanReadableCopyright': ''}

def updateplist(filepath, moudlename):
    plist = {}

    addList['CFBundleExecutable'] = moudlename
    addList['CFBundleName'] = moudlename
    
    #读取现有配置文件
    try:
        plist = readPlist(filepath)
    except (InvalidPlistException, NotBinaryPlistException), e:
        print "Something bad happened:", e

    print "旧的plist文件：", plist

    #写入配置
    for k, v in addList.iteritems():
        plist[k] = v


    #写文件
    try:
        writePlist(plist, filepath)
    except (InvalidPlistException, NotBinaryPlistException), e:
        print "Something bad happened:", e

    print "新的plist文件：", plist

if __name__=="__main__":
    parser = argparse.ArgumentParser(description = "Add bundle info")
    
    parser.add_argument("plistfilepath",action="store", help="plist file path")
    parser.add_argument("moudlename",action="store", help="moudle name")
    
    args = parser.parse_args()

    
    print "更新plist文件: ", args.plistfilepath
    
    
    if os.path.splitext(args.plistfilepath)[1] == ".plist":
        updateplist(args.plistfilepath, args.moudlename)
    else:
        print args.plistfilepath, "不是plist文件"
