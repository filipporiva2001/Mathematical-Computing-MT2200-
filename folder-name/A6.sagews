︠be2d8809-51a8-4a79-82a7-86b7a74d63dbs︠
#Exercise 1

#A Palindrome is a sequence of characters that reads the same backwards as forward (like 14L&L41, 
#RACECAR, or IPREFERPI). 
#Write a function pld(n) that randomly produces a palindrome of length n. For characters, use the 
#lists of lower case, upper case, and digits given to you earlier (let’s skip the special characters). 
#Input: A natural number n. 
#Output: A randomly generated palindrome of length n. 
#Skills: Lists, loops. 
#Test: Make sure your function works for both even and odd inputs. 
#Hint: Recall that you can add character z to the front and back of a list w as follows: w=[z]+w+[z]. 

def pld(n):
    dig=[0,1,2,3,4,5,6,7,8,9]
    lower=["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    upper=["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    totalcharacters = dig + lower + upper 
    ans=[]
    for i in range (n):
            character = randint(0,61) #pick randomly one character between the 70 present in the total list
            ans = [totalcharacters[character]] + ans + [totalcharacters[character]]#Add the charcater selected to teh password list 
        
    return ans
             

pld(5)
pld(4)


︡876a0568-0605-4d6e-a196-8925388e3b9d︡{"stdout":"[0, 'W', 'b', 1, 'Y', 'Y', 1, 'b', 'W', 0]\n"}︡{"stdout":"['J', 6, 'T', 'p', 'p', 'T', 6, 'J']\n"}︡{"done":true}
︠a17e0f27-af44-4c88-8f2b-6b2361395eecs︠


#Exercise 2
#2. In baseball, the world series is the championship tournament between 2 final teams. The teams play 
#multiple games against each other until one team accumulates 4 wins. This type of tournament is 
#sometimes called “best of 7” because the tournament will last at most 7 games. 
#a. Write a function bestof7(p) that simulates a world series between two teams (call them 
#Team 1 and Team 2). The value p is the probability that Team 1 wins when they play a single 
#game. 
#Input: The probability p. 
#Output: Result of the series. Return a list showing which team won each game. The last entry in 
#the list will show the team that won the series. 
#Example: The output [1, 2, 1, 2, 1, 1] shows that Team 1 won the first, third, fifth, and sixth 
#games to win the series in six games. 


def bestof7(p):
    record = []
    Team1= 0
    Team2= 0
    while Team1<4 and Team2<4:    #While loop taht stops at 4 wins 
        x = uniform(0,1)     #pick a real number in between 0 and 1
        if x<=p:        # if teh nu,mber chosen randomly is less and equatl than p then means team 1 wins 
            Team1 = Team1 + 1
            record = record + [1]
        else:
            Team2 = Team2 + 1
            record = record + [2]
           
    return record
   
   
bestof7(0.5)
  



#b. Write a function wssim(n,p) that simulates multiple runs of the world series. 
#Input: A natural number n (the number of times to run simulation) and the probability p that 
#Team 1 wins when they play a single game. 
#Output: the percentage of wins for Team 1. 
#Skills: Loops, simulations. 
#Hint: You will use the function bestof7(p) from part a, but first modify the function so that 
#it only returns 1 or 2 (to say which team won the series). We don’t need to know the list of 
#games to run this simulation.
def bestof7(p):
    record = []
    Team1= 0
    Team2= 0
    while Team1<4 and Team2<4:
        x = uniform(0,1)
        if x<=p:
            Team1 = Team1 + 1
            record = record + [1]
        else:
            Team2 = Team2 + 1
            record = record + [2]
        
    if Team1 == 4:     # if team 1 reach 4 victories return 1 otherwise 2
         return 1
    else:
         return 2 
bestof7(0.6)
def wssim(n,p):  
    c=0
    for j in range (n):
        w=bestof7(p)
        if w == 1:    #Any time team1 wins add to teh counter 
            c=c+1
    return N(c/n)   
        

wssim(100,0.9)


︡7fa1c25f-06e7-4e0c-8211-8606de83cdb5︡{"stdout":"[2, 2, 2, 1, 2]\n"}︡{"stdout":"1\n"}︡{"stdout":"1.00000000000000\n"}︡{"done":true}
︠707dea78-23e7-4d88-8d8e-83de61247bd6︠









