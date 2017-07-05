"""
     dBP    dBBBBP dBBBBBBP dBP dBP.dBBBBP      dBBBBBb     dBP
           dBP.BP                  BP                BB
   dBP    dBP.BP    dBP   dBP dBP  `BBBBb        dBP BB   dBP
  dBP    dBP.BP    dBP   dBP_dBP      dBP       dBP  BB  dBP
 dBBBBP dBBBBP    dBP   dBBBBBP  dBBBBP'       dBBBBBBB dBP

 Interface: requesting input from user before using the dictionary program to break into commands.
"""

import lotusCore
import lotusDictionary
import sys

lotusActive = False
mode = 0
modeChache = ["Dev","Normal","Vehicle","Home"]
verNum = 0.01

#terminal system
print
