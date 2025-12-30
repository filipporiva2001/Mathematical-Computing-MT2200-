"""
Random Simulations: Palindrome Generator & World Series Simulation
Author: Filippo Riva

This script includes:
Exercise 1:
  pld(n)        -> randomly generates a palindrome of length n

Exercise 2:
  a) bestof7(p) -> simulates one World Series (best of 7)
  b) wssim(n,p) -> estimates probability that Team 1 wins the series

Skills used: lists, loops, conditionals, random numbers, simulations
"""

from random import randint, uniform


# ------------------------------------------------------------
# Exercise 1: Palindrome Generator
# ------------------------------------------------------------
def pld(n: int) -> list:
    """
    Randomly generates a palindrome of length n using
    digits, lowercase letters, and uppercase letters.
    Input:  n (natural number)
    Output: list representing a palindrome
    """
    dig = [0,1,2,3,4,5,6,7,8,9]

    lower = [
        "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p",
        "q","r","s","t","u","v","w","x","y","z"
    ]

    upper = [
        "A","B","C","D","E","F","G","H","H","I","J","K","L","M","N","O","P",
        "Q","R","S","T","U","V","W","X","Y","Z"
    ]

    ans = []

    for _ in range(n):
        k = randint(1, 3)  # randomly choose which list to use

        if k == 1:  # digits
            d = randint(0, 9)
            ans = [dig[d]] + ans + [dig[d]]

        elif k == 2:  # lowercase letters
            d = randint(0, 25)
            ans = [lower[d]] + ans + [lower[d]]

        else:  # uppercase letters
            d = randint(0, 25)
            ans = [upper[d]] + ans + [upper[d]]

    return ans


# Test palindrome generator
print("pld(6) =", pld(6))
print("pld(7) =", pld(7))


# ------------------------------------------------------------
# Exercise 2a: Best-of-7 World Series Simulation
# ------------------------------------------------------------
def bestof7(p: float) -> list:
    """
    Simulates a World Series (best of 7 games).
    Input:  p = probability that Team 1 wins a single game
    Output: list showing which team won each game
            (last entry corresponds to the series winner)
    """
    record = []
    Team1 = 0
    Team2 = 0

    while Team1 < 4 and Team2 < 4:
        x = uniform(0, 1)

        if x <= p:
            Team1 += 1
            record.append(1)
        else:
            Team2 += 1
            record.append(2)

    return record


# Test bestof7 (full record)
print("bestof7(0.5) =", bestof7(0.5))


# ------------------------------------------------------------
# Exercise 2b: World Series Simulation (Winner Only)
# ------------------------------------------------------------
def bestof7_winner(p: float) -> int:
    """
    Simulates a World Series and returns only the winner.
    Output: 1 if Team 1 wins, 2 if Team 2 wins
    """
    Team1 = 0
    Team2 = 0

    while Team1 < 4 and Team2 < 4:
        x = uniform(0, 1)
        if x <= p:
            Team1 += 1
        else:
            Team2 += 1

    return 1 if Team1 == 4 else 2


def wssim(n: int, p: float) -> float:
    """
    Runs n simulations of the World Series.
    Input:  n = number of simulations
            p = probability Team 1 wins a single game
    Output: probability Team 1 wins the series
    """
    c = 0

    for _ in range(n):
        if bestof7_winner(p) == 1:
            c += 1

    return c / n


# Test World Series simulation
print("wssim(100, 0.6) =", wssim(100, 0.6))
