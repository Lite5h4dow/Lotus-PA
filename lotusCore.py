"""
     dBP    dBBBBP dBBBBBBP dBP dBP.dBBBBP      dBBBBBb     dBP
           dBP.BP                  BP                BB
   dBP    dBP.BP    dBP   dBP dBP  `BBBBb        dBP BB   dBP
  dBP    dBP.BP    dBP   dBP_dBP      dBP       dBP  BB  dBP
 dBBBBP dBBBBP    dBP   dBBBBBP  dBBBBP'       dBBBBBBB dBP

Lotus is a Multi functional Personal asistant designed primerally for people
like me, nerds, tech enthusiasts, gamers. she iss fully customisable and can
even be added to as users need.
"""
try:
    import dictionary.py
    break
except ValueError:
    print("Warning, Lotus is missing her dictionary, she will not be able to execute complex commands.")

commRunApp = False
commAppSelect = None
commShutdown = False


def dictionaryCheck(message):
    message = message.lower()               # makes sure input is lowercase.
    userInput = message.split()             # splits input message into array of words to check
    for eachWord in userInput:              # starts for loop to break down user input
        if eachWord in runSystem:           # looking for run command
            commRunApp = True               # confirms run command found (based in dictionary.py)

        if eachWord in programNames:        # looks for name of program
            if commAppSelect == None:       # looks makes sure commAppSelect is empty
                appSelect = eachWord        # selects program name

        if eachWord in greetings:           # looks to see if user greeted lotus
            #response function.
