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

#base variables
lotusActive = True
mode = 0
modeChache = ["Dev","Normal","Vehicle","Home"]
verNum = 0.01

#terminal system
print("Welcome to Lotus ver:" + str(verNum))
while lotusActive == True:
    #Command Variables
    commRun = False
    commProgram = None

    userInput = raw_input("enter command: ")

    userInput = userInput.lower()
    userInput = userInput.split()
    for i in userInput:
        if i in lotusDictionary.runSystem:
            commRun = True
            break
        if i in lotusDictionary.programNames:
            commProgram = i
            break
    if commRun == True:
        print("you requested to run " + commProgram)
