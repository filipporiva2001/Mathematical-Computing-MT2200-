"""
Random Simulations: Password Generator & Square Test
Author: Filippo Riva

This script includes:
Exercise 1:
  passgen(n)  -> randomly generates a password of length n

Exercise 2:
  squaretest(n) -> estimates the probability that x^2 < 2
                  when x is uniformly distributed on [0, 2]

Skills used: list manipulation, random numbers, loops, simulations
"""

from random import randint, uniform


# ------------------------------------------------------------
# Exercise 1: Password Generator
# ------------------------------------------------------------

# Character pools
dig = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

lower = [
    "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p",
    "q","r","s","t","u","v","w","x","y","z"
]

upper = [
    "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P",
    "Q","R","S","T","U","V","W","X","Y","Z"
]

spec = ["!", "@", "#", "$", "%", "^", "&", "*"]

# Combine all allowed characters into one list
totalcharacters = dig + lower + upper + spec  # total length = 70


def passgen(n: int) -> list:
    """
    Randomly generates a password of length n.
    Input:  n (natural number)
    Output: list representing the password
    """
    password = []  # empty list for password

    for _ in range(n):
        character = randint(0, 69)  # select one of the 70 characters
        password = password + [totalcharacters[character]]

    return password


# Test password generator
print("passgen(12) =", passgen(12))


# ------------------------------------------------------------
# Exercise 2: Square Test Simulation
# ------------------------------------------------------------
def squaretest(n: int) -> float:
    """
    Estimates the probability that x^2 < 2 when x ~ Uniform(0, 2).
    Input:  n = number of simulations
    Output: probability (decimal)
    """
    c = 0

    for _ in range(n):
        x = uniform(0, 2)
        xsquared = x ** 2
        if xsquared < 2:
            c += 1

    return c / n


# Test squaretest
print("squaretest(10000) =", squaretest(10000))


# ------------------------------------------------------------
# Final Answer (Exercise 2)
# ------------------------------------------------------------
# Simulation shows that x^2 < 2 approximately 70.8% of the time.
# Therefore, Mary is correct.
# Since x is uniformly distributed between 0 and 2,
# smaller values of x are more likely to satisfy x^2 < 2
# than larger values are to exceed it.
