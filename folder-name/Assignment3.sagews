︠bee48f8e-b9d2-4eed-b86d-48e2fdf2b664︠
#pt function
def pt(n):
    if n<=1:
        ans=0
    elif n==2:
        ans=1
    else: # n >= 3
        if n%2==0:
            ans=0
        else: # n is odd, greater than 2
            ans=1 # Set ans initially to be 1. Change to 0 if we find a factor.
            k=3
            done=0
            while k<=sqrt(n) and done<1:
                #print(k) # Window: Put this print to watch the function in action.
                if n%k==0: # If we find a factor ...
                    ans=0 # Change answer
                    done=1 # Stop the while loop
                k=k+2
    return ans

pt(8675309)





#Exercise 1
#Twin primes are two consecutive odd natural numbers that are both prime. For example,
#3 and 5 are twin primes; so are 17 and 19. Use the prime tester function pt(n) we developed in
#class to write a function tpfinder (for twin prime finder) that finds twin primes. (By the way, the
#Twin Prime Conjecture states that there are an infinite number of twin primes. Modern
#mathematicians have been able to find enormous twin primes. But no one has been able to prove
#this conjecture.)
#Input: Two natural numbers a and b.
#Output: A list of all twin prime pairs from a up to b (make sure your function returns a list).
#Test: Run your program for several values of a and b. You can check your outputs with lists that are
#easily found on the internet.
#Skills: If/Else, loops, functions, lists.
# Twin prime finder function
def tpfinder(a, b):
    twin_listprimes = []
    for k in range(a, b):  # Loop directly from a to b
        if pt(k) and pt(k + 2):  # Check if both k and k+2 are prime
            twin_listprimes.append((k, k + 2))  # Add the twin prime pair to the list with teh append function
    return twin_listprimes

# Test the function
tpfinder(1, 100)





#Exercise 2
#2. In the 1700s, German mathematician Christian Goldbach conjectured that every even natural
#number n greater than 2 can be written as a sum of two primes. Using computers, modern
#mathematicians have been able to check Goldbach’s conjecture for extremely large values of n. But
#no one has been able to prove the conjecture. Write a function gb(n) that writes even integers as a
#sum of two primes.
#Input: An even natural number n. You may assume that n => 6 , since the case 4 = 2 + 2 is not very
#interesting.
#Output: Two prime numbers that sum to n.
#Test: You can check your answers with the prime tester.
#Skills: If/Else, loops, functions.

def gb(n):
    for k in range(2, n):
        if pt(k) and pt(n - k):
            return (k, n - k)  # Return the pair of primes

gb(8)
︡8f76de98-1ef7-4056-92a9-2853891fd0dd︡{"stdout":"1"}︡{"stdout":"\n"}︡{"stdout":"[(3, 5), (5, 7), (11, 13), (17, 19), (29, 31), (41, 43), (59, 61), (71, 73)]"}︡{"stdout":"\n"}︡{"stdout":"(3, 5)\n"}︡{"done":true}
︠8cdc1990-a031-4b46-9470-45eaa74e01ed︠









