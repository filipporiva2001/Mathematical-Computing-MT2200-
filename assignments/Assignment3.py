"""
Prime Tools: Prime Tester, Twin Prime Finder, and Goldbach Pair Finder
Author: Filippo Riva

This script includes:
1) pt(n)      -> prime tester (returns 1 if prime, 0 if not)
2) tpfinder(a,b) -> returns a list of all twin prime pairs (p, p+2) in [a, b]
3) gb(n)      -> for an even n >= 6, returns two primes that sum to n

Skills used: if/else, loops, functions, lists
"""

from math import sqrt


# ------------------------------------------------------------
# Prime tester function (pt)
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
        else:  # n is odd, greater than 2
            ans = 1  # assume prime until we find a factor
            k = 3
            done = 0
            while k <= sqrt(n) and done < 1:
                # print(k)  # Uncomment to watch the function in action
                if n % k == 0:  # found a factor
                    ans = 0
                    done = 1
                k = k + 2

    return ans


# Example test for pt
print("pt(8675309) =", pt(8675309))


# ------------------------------------------------------------
# Exercise 1: Twin Prime Finder (tpfinder)
# ------------------------------------------------------------
def tpfinder(a: int, b: int) -> list:
    """
    Finds all twin prime pairs (p, p+2) from a up to b (inclusive).
    Input:  two natural numbers a and b
    Output: list of tuples [(p, p+2), ...]
    """
    twin_listprimes = []

    # Ensure we always loop from smaller to larger
    start = min(a, b)
    end = max(a, b)

    for k in range(start, end + 1):
        if pt(k) and pt(k + 2):
            twin_listprimes.append((k, k + 2))  # add pair to list

    return twin_listprimes


# Test the twin prime finder
print("tpfinder(1, 100) =", tpfinder(1, 100))


# ------------------------------------------------------------
# Exercise 2: Goldbach Pair Finder (gb)
# ------------------------------------------------------------
def gb(n: int):
    """
    Goldbach function:
    For an even natural number n >= 6, returns two primes that sum to n.
    Input:  even natural number n (assume n >= 6)
    Output: tuple (p, q) such that p + q = n and p, q are prime
    """
    if n < 6 or n % 2 != 0:
        raise ValueError("Input must be an even natural number n >= 6.")

    for k in range(2, n):
        if pt(k) and pt(n - k):
            return (k, n - k)

    # In theory, Goldbach says we should never get here for n >= 6
    return None


# Test Goldbach function
print("gb(8) =", gb(8))
