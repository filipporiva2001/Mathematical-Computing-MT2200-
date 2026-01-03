# Riva – Final (Descartes' Rule of Signs)
# ----------------------------------------
# f is a list of coefficients (constant term first):
# f(x) = -3 + 4x - 8x^2 + 0x^3 + 7x^4 - 8? ... etc (based on your list)
# Here: f = [-3, 4, -8, 7, 0, 7, 10]
# Means: f(x) = -3 + 4x - 8x^2 + 7x^3 + 0x^4 + 7x^5 + 10x^6

import numpy as np
import sympy as sp
import matplotlib.pyplot as plt

f = [-3, 4, -8, 7, 0, 7, 10]


def noc(coeffs):
    """
    Number of sign changes in the coefficient list (zeros ignored).
    """
    j = 0
    c = 0
    coeffs = coeffs[:]  # copy list so we don't modify the original

    # Remove zeros
    while j < len(coeffs):
        if coeffs[j] == 0:
            del coeffs[j]
        else:
            j += 1

    # Count sign changes
    for i in range(1, len(coeffs)):
        if coeffs[i] * coeffs[i - 1] < 0:
            c += 1

    return c


def drs(coeffs):
    """
    Descartes' Rule of Signs:
    - Possible # of positive real roots from sign changes in f(x)
    - Possible # of negative real roots from sign changes in f(-x)
    """
    # Positive roots possibilities
    c = noc(coeffs)
    pr = []
    for i in range(0, c + 1, 2):
        result = c - i
        if result >= 0:
            pr.append(result)

    # Build coefficients for f(-x): flip signs of odd-power terms
    negf = []
    for i in range(len(coeffs)):
        if i % 2 == 0:
            negf.append(coeffs[i])
        else:
            negf.append(-coeffs[i])

    # Negative roots possibilities
    cneg = noc(negf)
    nr = []
    for i in range(0, cneg + 1, 2):
        result = cneg - i
        if result >= 0:
            nr.append(result)

    return pr, nr


# --------------------------
# Test noc and drs
# --------------------------
print("noc(f):", noc(f))
print("drs(f):", drs(f))


# --------------------------
# Build polynomial in SymPy
# --------------------------
x = sp.Symbol("x")
poly = sum(f[i] * x**i for i in range(len(f)))  # coefficients are constant-first

# Real roots (numerical)
roots_all = sp.nroots(poly)  # complex roots
real_roots = [complex(r) for r in roots_all if abs(sp.im(r)) < 1e-10]
real_roots = [r.real for r in real_roots]

positive_roots = [r for r in real_roots if r > 0]
negative_roots = [r for r in real_roots if r < 0]

print("Real roots:", real_roots)
print("Positive real roots:", positive_roots)
print("Negative real roots:", negative_roots)


# --------------------------
# Plot polynomial and mark roots
# --------------------------
xs = np.linspace(-20, 20, 2000)
f_np = sp.lambdify(x, poly, "numpy")
ys = f_np(xs)

plt.figure()
plt.plot(xs, ys, label="Polynomial f(x)")
plt.ylim(-50, 50)

# mark roots on x-axis (y=0)
plt.scatter(positive_roots, [0] * len(positive_roots), s=60, label="Positive Roots")
plt.scatter(negative_roots, [0] * len(negative_roots), s=60, label="Negative Roots")

plt.axhline(0)
plt.xlabel("x")
plt.ylabel("f(x)")
plt.title("Polynomial and Real Roots")
plt.legend()
plt.show()
