#     dBP    dBBBBP dBBBBBBP dBP dBP.dBBBBP      dBBBBBb     dBP
#           dBP.BP                  BP                BB
#   dBP    dBP.BP    dBP   dBP dBP  `BBBBb        dBP BB   dBP
#  dBP    dBP.BP    dBP   dBP_dBP      dBP       dBP  BB  dBP
# dBBBBP dBBBBP    dBP   dBBBBBP  dBBBBP'       dBBBBBBB dBP
#
# Lotus is a Multi functional Personal asistant designed primerally for people
# like me, nerds, tech enthusiasts, gamers. she is fully customisable and can
# even be added to as users need

# Core Functions:
# Manage main tasks and complete system tasks

# Core Tasks
# Step 1 for the first launch i need to propogate the list of installed programs.
# Step 2 i need to find the language on the system.
# Step 3

#init
import yaml
import os
import streams
import lotusConfigManager
import lotusInterface
import strutils
import sequtils
import random


type EnvConf* = object
  progSelect: string
  runProgram: bool

var
  envConf = EnvConf.new()
  config = ConfigTemp.new()
  library = ApplicationLibrary.new()

  runReq:bool
  runQue:seq[string]

#backend
newFileStream("configs/root.yaml").load(config)
newFileStream("configs/appLibrary.yaml").load(library)

proc ApplicationLaunch(app:string):void=
  echo "wtf do i do?!"

block mainLoop:
  while true:
    runQue = @[]
    runReq = false
    randomize()
    echo "enter input: "
    var input = readLine(stdin)

    if "set username" in toLowerAscii(input):
      echo "want to set your username?"
      case toLowerAscii(readLine(stdin)):
      of "y", "yes":
        echo rand(config.confirmResponse), ", changing username"
      of "n", "no":
        echo "nevermind then"
      else:
        echo "dosen't look like an option"


    for i in split(toLowerAscii(input)):

      if i in config.greetings:
        echo rand(config.greetings), " ", config.username

      if i in config.run:
        runReq = true

      if i in library.applist:
        case runReq:
        of false:
          runQue.add(i)
        of true:
          echo rand(config.confirmResponse), ", launching ", i
          ApplicationLaunch(i)


      if i in config.disable:
        echo "leaving loop"
        break mainLoop

      if i in config.interaction:
        echo "you want to switch interaction mode to", i

    for i in runQue:
      ApplicationLaunch(i)
