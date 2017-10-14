"""
     dBP    dBBBBP dBBBBBBP dBP dBP.dBBBBP      dBBBBBb     dBP
           dBP.BP                  BP                BB
   dBP    dBP.BP    dBP   dBP dBP  `BBBBb        dBP BB   dBP
  dBP    dBP.BP    dBP   dBP_dBP      dBP       dBP  BB  dBP
 dBBBBP dBBBBP    dBP   dBBBBBP  dBBBBP'       dBBBBBBB dBP

Lotus is a Multi functional Personal asistant designed primerally for people
like me, nerds, tech enthusiasts, gamers. she iss fully customisable and can
even be added to as users need
"""
from sys import platform
import wmi
w = wmi.WMI()

progList = None

def listPrograms():
    for p in w.Win32_Product():
    if 'Box, Inc.' == p.Vendor and p.Caption and 'Box Sync' in p.Caption:
        print 'Installed {}'.format(p.Version)
