#!/local/bin/python3
#+TITLE: Ozone Timer
#+CATEGORY: Work
#+SUB_CATEGORY: HolidayInn

import time
import os

# Get Room Number
room = input('Room Number: ')

n = 10

def countdown(restart):
    while restart > 0:
        print("Reset Ozone in " + str(restart) + " seconds.")
        time.sleep(1)
        restart -= 1
    if restart == 0:
        print("\nTime to Reset the Ozone in Room: " + str(room))
        # Sound
        timesup = os.system("afplay /Users/Em/Music/wav/a13-problem.wav")
        time.sleep(5)
        go = os.system("afplay /Users/Em/Music/wav/a13-go1.wav")
countdown(n)


