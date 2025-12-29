︠3880b45a-afcf-4ec9-83bb-00ea5f10912dsr︠
#Exercise 1



#Using prime tester 

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



def coolpairs(n):
    pairs= []
    for j in range (1,n): #I know that j will be less than k that is the reason why I do not to go till n+1
        for k in range(j+1,n+1): #to select the second number in the pair such that k is always greater than j, ensuring that each pair (j, k) is unique and j < k
            if pt(j^2+k^2)==1: #if the sum between j and k is prime than 
                pairs.append((j,k))
    return pairs 
 
coolpairs(5)
︡fc55c113-d83d-40ba-ae26-d8669ca850bd︡{"stdout":"[(1, 2), (1, 4), (2, 3), (2, 5), (4, 5)]"}︡{"stdout":"\n"}
︠dfa37331-c5d7-48f3-8e68-de5ab13e342es︠


#Exercise 2

def costbb(n):
    if n>= 0 and n<=10:
        ans = 5 * n
    elif n>10 and n <= 20:
        ans = 4.80 * n 
    elif n>20 and n <= 50:
        ans = 4.60 * n 
    else:
        ans = 4.50 * n 
    return ans 


costbb(10)
costbb(11)
costbb(21)
costbb(57)
︡07d9da96-bb30-4d32-9588-e77a433348d7︡{"stdout":"50\n"}︡{"stdout":"52.8000000000000\n"}︡{"stdout":"96.6000000000000\n"}︡{"stdout":"256.500000000000\n"}︡{"done":true}
︠1d80f46c-8299-44a5-9924-add4da566085r︠


#Exercise 3

#a)

def cool(n): 
    ans=[]
    i=1
    while len(ans)<n:
        function_cool = ((2 * (i^2)) + 1)
        if pt(function_cool)==1:
            ans.append(i)
        i+=1
    return ans

cool(5)

︡6e761a16-ff40-4359-83fe-921d1c45010b︡
︠44d744b1-fdb6-45a7-9b53-2b3dcbf4ae18w︠
#b) 

def coolupto(n):
    ans = []
    j=1
    for j in range (1, n+1): #n+1 because is number less than n and equal to n
        if pt(2 * (j^2) + 1)==1:
            ans = ans + [j] 
    return ans
    
coolupto(15)
            
   

    
    
    

︡f978b797-2dd7-4610-9b8f-0497448e0c26︡
︠dd0c56de-1abd-414b-912f-a89219a6a848︠









