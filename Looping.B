import random

guessesTaken = 0
# The script will pick a number in a range of 1 to 20 that the user will have to pick #
number = random.randint(1, 20)
print('Well I am thinking of a number between 1 and 20.')
# While loop to track number of guesses and answer based on user input #
while guessesTaken < 10:
    print('Take a guess.')
    guess = input()
    guess = int(guess)

    guessesTaken = guessesTaken + 1
    print("Your current guess count is " + str(guessesTaken) + " out of 10 guesses:")

    if guess < number:
        print('Your guess is too low.')

    if guess > number:
        print('Your guess is too high.')

    if guess == number:
        break
# If the user guesses the right number, output will congratulate and show in how many guesses #
if guess == number:
    guessesTaken = str(guessesTaken)
    print('Good job! You guessed my number in ' + guessesTaken + ' guesses!')
# If the user guesses incorrectly too many times, output will show what the correct number was #
if guess != number:
    number = str(number)
    print('Nope. The number I was thinking of was ' + number)
