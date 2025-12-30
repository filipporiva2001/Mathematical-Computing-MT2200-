"""
Random Simulations: Coin Flip Experiment & PowerBall Generator
Author: Filippo Riva

This script includes:
Exercise 1:
  a) coinsum()        -> simulates flipping 4 coins and returns the sum of heads
  b) coinsumover25(n)-> estimates the probability that coinsum() > 25

Exercise 2:
  pb()               -> generates one PowerBall play (5 unique numbers + PowerBall)

Skills used: functions, loops, if/else, random numbers, lists
"""

from random import randint


# ------------------------------------------------------------
# Exercise 1a: Coin Sum Simulation
# ------------------------------------------------------------
def coinsum():
    """
    Simulates flipping a penny, nickel, dime, and quarter.
    Heads = 1, Tails = 0.
    Returns the sum of the coin values that come up heads.
    """
    # Values of the coins
    penny = 1
    nickel = 5
    dime = 10
    quarter = 25

    # Simulate coin flips (0 = tails, 1 = heads)
    pennyf = randint(0, 1)
    nickelf = randint(0, 1)
    dimef = randint(0, 1)
    quarterf = randint(0, 1)

    # Sum values of coins that come up heads
    total = (pennyf * penny) + (nickelf * nickel) + \
            (dimef * dime) + (quarterf * quarter)

    return total


# Test coinsum
print("coinsum() =", coinsum())


# ------------------------------------------------------------
# Exercise 1b: Probability coinsum() > 25
# ------------------------------------------------------------
def coinsumover25(n: int) -> float:
    """
    Estimates the probability that coinsum() returns a value over 25.
    Input:  n = number of simulations
    Output: probability (decimal)
    """
    count = 0

    for _ in range(n):
        total = coinsum()
        if total > 25:
            count += 1

    probability = count / n
    return probability


# Test coinsumover25
print("coinsumover25(1000) =", coinsumover25(1000))


# ------------------------------------------------------------
# Exercise 2: PowerBall Number Generator
# ------------------------------------------------------------
def pb():
    """
    Generates one PowerBall play.
    Output:
      - 5 different numbers from 1 to 69
      - 1 PowerBall number from 1 to 26 (last element in list)
    """
    firstnumbers = []

    # Generate 5 unique numbers from 1 to 69
    while len(firstnumbers) < 5:
        randomnumber = randint(1, 69)
        if randomnumber not in firstnumbers:
            firstnumbers.append(randomnumber)

    # Generate PowerBall number (1 to 26)
    powerballnumber = randint(1, 26)

    # Combine results
    sixrandomnumbers = firstnumbers + [powerballnumber]

    return sixrandomnumbers


# Test PowerBall function
print("pb() =", pb())
