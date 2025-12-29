︠6c391b89-1083-4e79-ac78-d5f906b7a4b6︠
#Exercise 1

#In algebraic geometry, mathematicians study connections between equations and their
#corresponding curves (and surfaces). One question one might ask is to find points on a
#curve whose coordinates are natural numbers. That is, we look for natural numbers x and y that
#satisfy the equation. Write a function ipfinder(n) that finds integer points on the curve
#x * y == 1 + (x - y) ** 2:
#Input: A natural number n.
#Output: A list showing all integer points ( x,y ) x y on the curve where 1<= x <=y <=n
#Test: By hand, check the answers your program produces. Make sure they satisfy the equation.
#kills: If/else, nested loops, functions, lists.
#Hint: First write a function that prints all the (x , y) pairs to be considered. It will help to review the
#nested loop examples posted in the Week 2 Overview

def ipfinder(n):  #Definying the new function
    result = []   #Create  a list, teh results will be store in thsi lists
    # Loop over all possible values of x and y
    for x in range(1, n + 1): #Generate a loop that starts at 1 and end at n+1 applicable to every single value of n
        for y in range(x, n + 1): #The range starts from x and end at n+1 to  be sure we are following the condition x <= y
        # Check if the pair (x, y) satisfies the equation xy = 1 + (x - y)^2
            if x * y == 1 + (x - y) ** 2:
                result.append((x, y)) #append function put strings togetehr into the list 
    return result

# Example usage:
n = 10
print(ipfinder(n))
︡640fb476-15d6-43c9-bb6d-8077e6c4fd9f︡{"stdout":"[(1, 1), (1, 2), (2, 5)]\n"}︡{"done":true}
︠a04b58ff-e716-45c3-b4dd-178dcc02745es︠
#Exercise 2


# Write a function factors(n) that returns the factors of a given natural number n.
#Input: A natural number n.
#output: A list consisting of the factors of n.
#Example: The number 12 has factors 1, 2, 3, 4, 6, and 12, so factors(12) should return the list
# [1, 2, 3, 4, 6, 12].
#Test: Run your function on several natural numbers and check the answers by hand.
#Skills: Using loops and the if/else construction.
#Hint: Recall that n%k gives the remainder when n is divided by k. When this expression is equal to
#zero, k is a factor of n.


def factors(n): #Defyining the function
    result = [] #Create a list
    for k in range (1, n+1): #The range generates numbers from 1 to n+1 and the k is getting every single value to be tested from 1 to n+1 not included
        if n % k == 0: #if teh remainder is equal to 0 that means that the k will be a divisor of n
            result.append(k) #the function append will put together into the list all the strings creating a single list containing them

    return result

print(factors(79))
print (factors(85))

︡ecedbd12-f7cf-4e18-b71b-a72daa898834︡{"stdout":"[1, 79]\n"}︡{"stdout":"[1, 5, 17, 85]\n"}︡{"done":true}

︠32bb50fa-1cc7-43a6-b591-66bc0ff6c027︠

︠e1a70a23-2039-4b6c-af77-4abc8415db2f︠









