# -*- coding: utf-8 -*-
# Filippo Riva
#
# =============================================================================
# Functions Practice – Conditional Logic
#
# Topics:
# 1) Nested if/else statements
# 2) Quadratic discriminant and real roots
#
# Skills:
# - Writing functions
# - Using nested if/else logic efficiently
# - Testing functions with multiple cases
# =============================================================================


# =============================================================================
# Question 1
#
# Write a function mymid(a, b, c) that determines the middle value
# of three natural numbers using nested if/else statements.
#
# Input:
#   a, b, c (natural numbers)
#
# Output:
#   The middle value among the three numbers
#
# Example:
#   Input: 3, 8, 5
#   Output: 5
#
# Test:
#   Run the function on all 6 permutations of (3, 5, 8)
# =============================================================================
def mymid(a, b, c):
    if a > b:
        if a < c:
            return a
        else:
            if b > c:
                return c
            else:
                return b
    else:
        if a > c:
            return a
        else:
            if b < c:
                return b
            else:
                return c


# Test cases for Question 1
print("Testing mymid(a, b, c):")
tests = [
    (3, 5, 8),
    (3, 8, 5),
    (5, 3, 8),
    (5, 8, 3),
    (8, 3, 5),
    (8, 5, 3)
]

for a, b, c in tests:
    print(f"Input: {a}, {b}, {c} → Middle value: {mymid(a, b, c)}")

print()


# =============================================================================
# Question 2
#
# Write a function realroots(a, b, c) that determines how many real
# roots a quadratic polynomial has.
#
# The polynomial is:
#   f(x) = ax^2 + bx + c
#
# The number of real roots depends on the discriminant:
#   D = b^2 - 4ac
#
# Rules:
#   - D > 0  → 2 real roots
#   - D = 0  → 1 real root
#   - D < 0  → 0 real roots
#
# Input:
#   a, b, c (coefficients)
#
# Output:
#   Number of real roots (0, 1, or 2)
# =============================================================================
def realroots(a, b, c):
    discriminant = b ** 2 - 4 * a * c

    if discriminant > 0:
        return 2
    elif discriminant == 0:
        return 1
    else:
        return 0


# Test cases for Question 2
print("Testing realroots(a, b, c):")
print("f(x) = x^2 - 3x + 2 →", realroots(1, -3, 2))   # 2 roots
print("f(x) = 6x^2 + 4x + 1 →", realroots(6, 4, 1))  # 0 roots
print("f(x) = x^2 + 1 →", realroots(1, 0, 1))        # 0 roots
print("f(x) = 5x^2 - 4x + 4 →", realroots(5, -4, 4)) # 0 roots
print("f(x) = x^2 - 2x + 1 →", realroots(1, -2, 1))  # 1 root
print("f(x) = x^2 - 7 →", realroots(1, 0, -7))       # 2 roots
