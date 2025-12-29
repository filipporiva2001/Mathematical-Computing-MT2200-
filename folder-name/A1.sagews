︠7559409c-1128-476d-89d2-e01fe43e78b9s︠
#Write a function mymid(a,b,c) that uses nested if/else statements to efficiently determine the
#middle value of three given natural numbers. For example, given inputs 3, 8, and 5, your fubction should output 5 
#Note: There are many ways to write such a function, but, to receive full credit you must use nested if/else statements efficiently your function if/else statements efficiently.
#Input: Any three natural numbers (call them a, b, and c).
#Output: The middle of the three numbers.
#Test: Run the program on all 6 possible orderings of the numbers 3, 5, and 8.
#Skills: Writing functions, using the if/else construction


def mymid(a, b, c):
    if a > b:
        if a < c:
            # a is the middle value
            return a
        else:
            # a is not the middle value, so compare b and c
            if b > c:
                # c is the middle value
                return c
            else:
                # b is the middle value
                return b
    else:
        # a <= b
        if a > c:
            # a is the middle value
            return a
        else:
            # a is not the middle value, so compare b and c
            if b < c:
                # b is the middle value
                return b
            else:
                # c is the middle value
                return c

# Test the function with all 6 possible orderings of 3, 5, and 8
Test = [(3, 5, 8), (3, 8, 5), (5, 3, 8), (5, 8, 3), (8, 3, 5), (8, 5, 3)]

for values in Test:
    a, b, c = values
    print(f"Input: {a}, {b}, {c} Middle value: {mymid(a, b, c)}")
︡29194809-5e3e-493a-94c3-c17e18b6b503︡{"stdout":"Input: 3, 5, 8 Middle value: 5\nInput: 3, 8, 5 Middle value: 5\nInput: 5, 3, 8 Middle value: 5\nInput: 5, 8, 3 Middle value: 5\nInput: 8, 3, 5 Middle value: 3\nInput: 8, 5, 3 Middle value: 3\n"}︡{"done":true}
︠85062883-6a32-48a6-ae78-3a56d81f9539s︠
#Write a function realroots(a,b,c) that decides of a given quadratic polynomial has zero, one,
#or two real roots.
#Input: The coefficients a, b, and c of f(x) = ax^2 + bx + c.
#Output: The number of real roots the polynomial has.
#Test: Run the program on several different quadratic polynomials. Be sure to find examples that
#give each of the three possible outputs. You can use Sage to plot the polynomial to make sure your
#program is working correctly.
#Skills: Writing functions, using the if/else construction.
#Hint: It will help to recall (or look up, as necessary) the quadratic formula.

def realroots(a, b, c):
    #To find the number of real roots it is possible use the discriminant  
    #if discriminant > 0 we will have 2 roots 
    #if the discriminant = 0 we will have 1 root  
    #if the discriminant < 0 we will have 0 root 
    # Calculate the discriminant
    discriminant = b**2 - 4*a*c
    
    # Determine the number of real roots based on the discriminant
    if discriminant > 0:
        return 2  # Two real roots
    elif discriminant == 0:
        return 1  # One real root
    else:
        return 0  # No real roots

# Test the function with different quadratic polynomials
print(realroots(1, -3, 2))  
print(realroots(6, 4, 1))   
print(realroots(1, 0, 1))   
print(realroots(5, -4, 4))  
print(realroots(1, -2, 1))  
print(realroots(1, 0, -7))  
︡d1201092-514e-4710-9ac7-32cede792387︡{"stdout":"2\n"}︡{"stdout":"0\n"}︡{"stdout":"0\n"}︡{"stdout":"0\n"}︡{"stdout":"1\n"}︡{"stdout":"2\n"}︡{"done":true}









