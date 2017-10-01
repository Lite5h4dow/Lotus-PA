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
import pyttsx

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

    userInput = input("enter command: ")

    userInput = userInput.lower()
    userInput = userInput.split()
    for i in userInput:
        if i in lotusDictionary.runSystem:
            commRun = True

        if i in lotusDictionary.programNames:
            commProgram = i

        if i in lotusDictionary.shutdowns:
            lotusActive = False

    if commRun == True:
        if commProgram == None:
            print("Error 1: Warning, System may be broken")

        elif commProgram not in lotusDictionary.programNames:
            print("Error 2: Program Could Not Be Found")
        else:
            print("you requested to run " , commProgram)
