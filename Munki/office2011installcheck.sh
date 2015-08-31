#!/usr/bin/env python
import os


filename = "/Applications/Microsoft Office 2011"

if os.path.exists(filename):
    #print 'Application Already Installed'
    exit(1)
else:
    #print 'Application not installed'
    exit(0)
