# -*- coding: utf-8 -*-
# Filippo Riva
#
# =============================================================================
# Functions Practice – Integer Points & Factors
#
# Topics:
# - Nested loops
# - If/else logic
# - Functions and lists
#
# =============================================================================


# =============================================================================
# Exercise 1
#
# In algebraic geometry, mathematicians study connections between equations
# and their corresponding curves.
#
# Write a function ipfinder(n) that finds integer points on the curve:
#
#     x * y = 1 + (x - y)^2
#
# Input:
#   n (natural number)
#
# Output:
#   A list of integer points (x, y) such that:
#       1 ≤ x ≤ y ≤ n
#
# Skills:
# - Nested loops
# - If/else logic
# - Lists
#
# Hint:
# - Use nested loops to generate all (x, y) pairs
# =============================================================================
def ipfinder(n):
    result = []  # List to store valid (x, y) pairs

    for x in range(1, n + 1):
        for y in range(x, n + 1):  # ensures x ≤ y
            if x * y == 1 + (x - y) ** 2:
                result.append((x, y))

    return result


# Test Exercise 1
print("Integer points on the curve for n = 10:")
print(ipfinder(10))
print()


# =============================================================================
# Exercise 2
#
# Write a function factors(n) that returns all factors of a given
# natural number n.
#
# Input:
#   n (natural number)
#
# Output:
#   A list of all factors of n
#
# Example:
#   factors(12) → [1, 2, 3, 4, 6, 12]
#
# Skills:
# - Loops
# - If/else logic
#
# Hint:
# - If n % k == 0, then k is a factor of n
# =============================================================================
def factors(n):
    result = []

    for k in range(1, n + 1):
        if n % k == 0:
            result.append(k)

    return result


# Test Exercise 2
print("Factors of 79:")
print(factors(79))
print()

print("Factors of 85:")
print(factors(85))
