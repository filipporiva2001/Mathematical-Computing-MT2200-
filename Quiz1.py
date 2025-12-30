"""
Quiz 1 - Solutions
Author: Filippo Riva

This script includes:
Exercise 1:
  - pt(n): prime tester (returns 1 if prime, 0 otherwise)
  - coolpairs(n): returns all pairs (j, k) with 1 <= j < k <= n
                  such that j^2 + k^2 is prime

Exercise 2:
  - costbb(n): computes the cost of buying n items with a tiered pricing system

Exercise 3:
  a) cool(n): returns the first n positive integers i such that 2*i^2 + 1 is prime
  b) coolupto(n): returns all integers j in [1, n] such that 2*j^2 + 1 is prime

Skills used: functions, loops, conditionals, lists, math
"""

from math import sqrt


# ------------------------------------------------------------
# Exercise 1: Prime tester (pt) + coolpairs
# ------------------------------------------------------------
def pt(n: int) -> int:
    """
    Prime tester.
    Input:  natural number n
    Output: 1 if n is prime, 0 otherwise
    """
    if n <= 1:
        ans = 0
    elif n == 2:
        ans = 1
    else:  # n >= 3
        if n % 2 == 0:
            ans = 0
        else:
            ans = 1
            k = 3
            done = 0
            while k <= sqrt(n) and done < 1:
                # print(k)  # Uncomment to watch the function in action
                if n % k == 0:
                    ans = 0
                    done = 1
                k = k + 2

    return ans


def coolpairs(n: int) -> list:
    """
    Returns pairs (j, k) with 1 <= j < k <= n such that j^2 + k^2 is prime.
    Output format: [(j, k), (j, k), ...]
    """
    pairs = []

    for j in range(1, n):
        # k starts at j+1 so j<k and we do not repeat pairs
        for k in range(j + 1, n + 1):
            # IMPORTANT: use ** for exponent (NOT ^ which is XOR in Python)
            if pt(j**2 + k**2) == 1:
                pairs.append((j, k))

    return pairs


print("coolpairs(5) =", coolpairs(5))


# ------------------------------------------------------------
# Exercise 2: costbb(n)
# ------------------------------------------------------------
def costbb(n: int) -> float:
    """
    Computes the cost for n items using tiered pricing.
    0-10   : $5.00 each
    11-20  : $4.80 each
    21-50  : $4.60 each
    51+    : $4.50 each
    """
    if 0 <= n <= 10:
        ans = 5 * n
    elif 10 < n <= 20:
        ans = 4.80 * n
    elif 20 < n <= 50:
        ans = 4.60 * n
    else:
        ans = 4.50 * n

    return ans


print("costbb(10) =", costbb(10))
print("costbb(11) =", costbb(11))
print("costbb(21) =", costbb(21))
print("costbb(57) =", costbb(57))


# ------------------------------------------------------------
# Exercise 3a: cool(n)
# ------------------------------------------------------------
def cool(n: int) -> list:
    """
    Returns the first n positive integers i such that (2*i^2 + 1) is prime.
    """
    ans = []
    i = 1

    while len(ans) < n:
        # IMPORTANT: use ** for exponent (NOT ^ which is XOR in Python)
        function_cool = (2 * (i**2)) + 1
        if pt(function_cool) == 1:
            ans.append(i)
        i += 1

    return ans


print("cool(5) =", cool(5))


# ------------------------------------------------------------
# Exercise 3b: coolupto(n)
# ------------------------------------------------------------
def coolupto(n: int) -> list:
    """
    Returns all integers j from 1 up to n such that (2*j^2 + 1) is prime.
    """
    ans = []

    for j in range(1, n + 1):
        # IMPORTANT: use ** for exponent (NOT ^ which is XOR in Python)
        if pt(2 * (j**2) + 1) == 1:
            ans = ans + [j]

    return ans


print("coolupto(15) =", coolupto(15))
