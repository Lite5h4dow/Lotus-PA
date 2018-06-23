#     dBP    dBBBBP dBBBBBBP dBP dBP.dBBBBP      dBBBBBb     dBP
#           dBP.BP                  BP                BB
#   dBP    dBP.BP    dBP   dBP dBP  `BBBBb        dBP BB   dBP
#  dBP    dBP.BP    dBP   dBP_dBP      dBP       dBP  BB  dBP
# dBBBBP dBBBBP    dBP   dBBBBBP  dBBBBP'       dBBBBBBB dBP
#
# Lotus is a Multi functional Personal asistant designed primerally for people
# like me, nerds, tech enthusiasts, gamers. she is fully customisable and can
# even be added to as users need

type ConfigTemp* = object
  defaultMode*: int
  username*: string
  modes*: seq[string]
  interaction*: seq[string]
  run*: seq[string]
  edit*: seq[string]
  greetings*: seq[string]
  disable*: seq[string]
  enable*: seq[string]
  list*: seq[string]
  confirm*: seq[string]
  decline*: seq[string]
  confirmResponse*:seq[string]

type ApplicationLibrary* = object
