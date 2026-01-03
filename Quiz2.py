# Riva – Quiz 2
# ----------------------------
# Exercise 3
# ----------------------------

from random import randint, uniform

def lamarA(n):
    l = 0  # counter for Larry
    m = 0  # counter for Mary (not strictly needed, but kept for clarity)

    for j in range(1, n + 1):
        x = randint(1, 6)  # dice 1
        y = randint(1, 6)  # dice 2

        if x == y:  # if you get a double, Larry wins
            l += 1
        else:
            z = randint(1, 6)
            k = randint(1, 6)

            if z + k < 7:  # if the sum is less than 7, Larry wins
                l += 1
            else:
                m += 1

    return l / n


print("lamarA(100):", lamarA(100))


# ----------------------------
# Exercise 4
# ----------------------------

def blueleft(n):
    c = 0  # counter for desired outcome

    for j in range(n):
        x = uniform(0, 1)  # probability for Person 1
        y = uniform(0, 1)  # probability for Person 2

        # Person 1 has blue eyes AND Person 2 is left-handed
        if x < 0.27 and y < 0.11:
            c += 1

    return c / n


print("blueleft(1000):", blueleft(1000))
