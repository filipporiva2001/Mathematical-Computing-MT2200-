︠501b7ec6-a49c-4533-b5ed-527ffac31f34︠
#Exercise 1
#An experiment consists of flipping a penny, a nickel, a dime, and a quarter, and then summing the
#values of the coins that come up heads.
#a. Write a function coinsum() that simulates this experiment. For example, if the penny, nickel, and quarter come up heads and the dime comes up tails coinsum() will return 31.
#Input: None. It is okay for a function to have no input, but you need to use the empty
#parentheses.
#Output: The sum of the values of the coins that come up heads.
#Skills: Random numbers.
#Hint: Use randint(0,1) to simulate the flipping of a coin. Here 0 corresponds to tails and 1 corresponds to head

def coinsum():
    # Values of the coins
    penny = 1
    nickel = 5
    dime = 10
    quarter = 25

    # Simulate the coin flips (0 for tails, 1 for heads)
    pennyf = randint(0, 1)
    nickelf = randint(0, 1)
    dimef = randint(0, 1)
    quarterf = randint(0, 1)

    # Sum the values of the coins that come up heads
     #if teh coin will comes up tails it will not be summed becasue it will register as a 0
    total = (pennyf * penny) + (nickelf * nickel) + (dimef * dime) + (quarterf * quarter)

    return total

coinsum()
︡f9d4fe70-204f-4670-b932-b825b0958894︡{"stdout":"40\n"}︡{"done":true}
︠f79eda34-e9a1-4791-a930-c0d27ba52cb5︠



#Write a function coinsumover25(n) that estimates the probability that the coinsum()
#function above returns a value over 25.
#Input: A natural number n (the number of times to run the simulation).
#Output: The corresponding probability (in decimal).
#Skills: Loops, if/else, running simulations.
#Note: This function will call (use) coinsum() function from part a


def coinsum():
    # Values of the coins
    penny = 1
    nickel = 5
    dime = 10
    quarter = 25

    # Simulate the coin flips (0 for tails, 1 for heads)
    pennyf = randint(0, 1)
    nickelf = randint(0, 1)
    dimef = randint(0, 1)
    quarterf = randint(0, 1)

    # Sum the values of the coins that come up head
     #if tehe coin will comes up tails it will not be summed becasue it will register as a 0
    total = (pennyf * penny) + (nickelf * nickel) + (dimef * dime) + (quarterf * quarter)

    return total


def coinsumover25(n):
    count=0
    for i in range(n):
        total = coinsum()
        if total > 25:
            count += 1

    probability = float(count / n) #I use float to get a decimal and not a fraction 
    return probability

coinsumover25(1000)
︡5783b2e7-d845-44c9-8578-73fe7d39fe32︡{"stdout":"0.411\n"}︡{"done":true}
︠c76d41b6-9769-4756-a61c-47fcceddb15e︠

︡eda0a23e-8155-45bb-8fd9-0319f3431a93︡
︠91b26d48-e8ca-4ab9-90df-a19d284832fds︠



#Exrecise 2
#Write a function pb() that outputs numbers for one play of PowerBall. For each play, you select 5
#different numbers from 1 to 69. Then you select a 6th number from 1 to 26.
#Input: None.
#Output: A list of 6 numbers, the last being the Powerball.
#Test: Your program must make sure you have no repeats in your first 5 numbers.
#Skills: Functions, loops, random numbers.
#Hint: For the first 5 values, use a loop. Generate a new value and use the in function for lists to
#check that the new value is not already on the list. If the new number is not already on the list, add
#it to the list. Otherwise, generate a new value and continue.

def pb():
    firstnumbers = [] #open an empty list for the first five numbers
    while len(firstnumbers) < 5: #Use a while loop to select 5 times a random number between 1 and 69
        randomnumber = randint(1, 69) #select random number in between 1 and 69, randit function includes 1 and 69
        if randomnumber not in firstnumbers:
            firstnumbers.append(randomnumber) #Add together teh five random numbers to teh empty list creaed before

    powerballnumber = randint(1, 26) #powerball select a randim number between 1 and 26, randit function is  including 1 and 26

    sixrandomnumbers = firstnumbers + [powerballnumber]
    # Return the list of 5 numbers plus the Powerball
    return sixrandomnumbers

# Test the function
pb()
︡523b440c-72dc-4743-adc5-cdcddbd07041︡{"stdout":"[51, 36, 55, 17, 50, 15]\n"}︡{"done":true}
︠039ade5f-508d-4a44-adf0-4c9c723b79e2s︠
︡97971e17-535b-4c3b-bdf0-7a8b71586474︡{"done":true}
︠fea2a425-8d55-41b3-bcba-2b203c876abas︠
︡37457b84-ee7f-401b-9e90-2f287c292c2b︡{"done":true}
︠41cf3159-fda7-4681-beee-83106a2c8d0b︠









