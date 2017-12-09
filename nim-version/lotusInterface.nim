#     dBP    dBBBBP dBBBBBBP dBP dBP.dBBBBP      dBBBBBb     dBP
#           dBP.BP                  BP                BB
#   dBP    dBP.BP    dBP   dBP dBP  `BBBBb        dBP BB   dBP
#  dBP    dBP.BP    dBP   dBP_dBP      dBP       dBP  BB  dBP
# dBBBBP dBBBBP    dBP   dBBBBBP  dBBBBP'       dBBBBBBB dBP
#
# Lotus is a Multi functional Personal asistant designed primerally for people
# like me, nerds, tech enthusiasts, gamers. she is fully customisable and can
# even be added to as users need

# Inteface tasks
# Managing the UI, Terminal and Voice input options and hostong the commands for the main interface system.

# aquires user terminal input and allows the user to give a request then forwards it as its result.
import os
import streams
import yaml
import strutils
import lotusConfigManager
import lotusCore

var
  config = ConfigTemp.new()
  library = ApplicationLibrary.new()

newFileStream("configs/root.yaml").load(config)
newFileStream("configs/appLibrary.yaml").load(library)





proc terminalInput*():string=
  echo "enter input:"
  var input = readLine(stdin)
  result = input

# looks for an exit command then exits if one is found.
proc lotusExit*(e: string):bool=
  if e in config.disable:
    result = true
  else:
    result = false

proc lotusApp*(e: string):string=
  if e in library.applist:
    result = e
  else:
    result = ""

proc lotusLaunch*(e: string):bool=
  if e in config.run:
    result = true
  else:
    result = false
