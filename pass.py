from random import choice
from string import ascii_lowercase, digits, ascii_uppercase
import time, os, sys
banner = '''
\n**************************************
lazzy Password generator
                  V1.0.1

Bug report : animeshroy@live.com
Follow me Here : @anir0y
**************************************\n\n
'''
print banner
reason = raw_input('What you need password for ? : ')
x = int(raw_input("how much Charactors ? : "))
b =(''.join(choice(ascii_lowercase + digits + ascii_uppercase) for i in range(x)))
date = time.asctime()
a = ("Created on " + str(date) + " Reason: " + str(reason))
with open("C:/damn/passdb.exe", "a") as text_file:
    text_file.write("Pass: " + str(b) + '\n' + a + '\n' + '\n')
os.system('notepad.exe C:/damn/passdb.exe')
