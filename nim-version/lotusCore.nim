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

type EnvConf* = object
  progSelect: string
  runProgram: bool

var
  envConf = EnvConf.new()
  config = ConfigTemp.new()
  library = ApplicationLibrary.new()

newFileStream("configs/root.yaml").load(config)
newFileStream("configs/appLibrary.yaml").load(library)


block mainLoop:
  while true:
    for i in split(toLowerAscii(terminalInput())):
      echo i
