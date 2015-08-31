#!/usr/bin/env python
import os


filename = "/Applications/SecurID.app"

if os.path.exists(filename):
    #print 'Application Already Installed'
    exit(1)
else:
    #print 'Application not installed'
    exit(0)
