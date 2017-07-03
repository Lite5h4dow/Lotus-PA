//Define Dictionary
library=['run','start','launch','fire','program','app','application']

def dictionaryCheck(message):
    message = message.lower()               # makes sure input is lowercase.
    playerWords = message.split()           # splits input message into array of words to check
    
