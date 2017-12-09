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

# Tasks
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
  runProg: bool
  debug: bool

var
  envConf = EnvConf.new()

block mainLoop:
  while true:
    envConf.progSelect = ""
    for i in split(toLowerAscii(terminalInput())):
      if lotusExit(i):
        break mainLoop

      if lotusApp(i) != "":
        echo lotusApp(i), " is selected for launch"
        envConf.progSelect = lotusApp(i)

      if lotusLaunch(i):
        envConf.runProg = true
        echo "program is ready to launch"
      else:
        envConf.runprog = false

      #echo i, envConf.progSelect #debug Line
