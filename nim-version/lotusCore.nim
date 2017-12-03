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

import yaml
import os
import streams
import lotusConfigManager
import lotusInterface
import strutils

var
  runProgram = false
  programSelect = "Null"
  config = ConfigTemp.new()
  library = ApplicationLibrary.new()

newFileStream("configs/root.yaml").load(config)
newFileStream("configs/appLication.yaml").load(library)

block mainLoop:
  while true:
    echo "enter input: "
    var input = readLine(stdin)
    for i in split(toLower(input)):

      if i in library.applist:
        programSelect = i

      if i in config.disable:
        echo "leaving loop"
        break mainLoop

      if i in config.run:
        runProgram = true
        echo "Run's a Program"

      if i in config.interaction:
        echo "you want to switch interaction mode to", i
      echo "still in loop B"

      if runProgram:
        echo i

    echo "still in loop A"
