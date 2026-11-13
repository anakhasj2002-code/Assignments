Python 3.15.2 (tags/v3.15.2:5e58eaa, Oct 25 2026, 17:27:03) [MSC v.1951 64 bit (AMD64)] on win32
Enter "help" below or click "Help" above for more information.
# PYTHON ASSIGNMENT 3
# While Loop, For Loop and Function

# PART 1: WHILE LOOP - NUMBER GUESSING GAME

import random

# Generate a random number between 1 and 10
secret_number = random.randint(1, 10)
... 
... # Maximum attempts
... attempts = 3
... 
... print("NUMBER GUESSING GAME")
... 
... while attempts > 0:
...     guess = int(input("Guess the number (between 1 and 10): "))
... 
...     if guess < 1 or guess > 10:
...         print("Your guess is out of range. Please guess a number between 1 and 10.")
...         continue
... 
...     attempts -= 1
... 
...     if guess > secret_number:
...         print("Too high. Try again.")
... 
...     elif guess < secret_number:
...         print("Too low. Try again.")
... 
...     else:
...         print("Congratulations! You guessed the correct number.")
...         break
... 
... else:
...     print("Better luck next time!")
...     print("The correct number was:", secret_number)
... 
... 
... # PART 2: FOR LOOP - MULTIPLICATION TABLE GENERATOR
... 
... print("\nMULTIPLICATION TABLE GENERATOR")
... 
... number = int(input("Enter a number: "))
... 
... for i in range(1, 11):
...     result = number * i
