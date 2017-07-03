"""

Lotus is a Multi functional Personal asistant designed primerally for people
like me, nerds, tech enthusiasts, gamers. she iss fully customisable and can
even be added to as users need.
"""
try:
    import dictionary.py
    break
except ValueError:
    print("Warning, Lotus is missing her dictionary, she will not be able to execute complex commands.")

appRun = False
app = None


def dictionaryCheck(message):
    message = message.lower()               # makes sure input is lowercase.
    userInput = message.split()             # splits input message into array of words to check
    for eachWord in userInput:              # starts for loop to break down user input
        if eachWord in launchApp:           # tests to see if user wants to launch an app
            appRun = True                   # makes sure the program knows it wants to launch something
        if eachWord in appList:             # checks to see if an application name is mentioned
            app = eachWord                  # stores application name
