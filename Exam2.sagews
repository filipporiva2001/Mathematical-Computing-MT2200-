︠805e0caf-cc4e-4e26-b0b6-70398c3f4d6bs︠
#Exercise 3


def lamarA(n):
    l=0 #start the count for larry 
    m=0 #start the count for mary
    for j in range (1, n+1):
        x=randint(1,6) #dice 1
        y=randint(1,6) #dice 2
        if x==y: #if you get a double larry wins and increase the counter 
            l=l+1
        else:   #otherwise roll two dice 
            z=randint(1,6)
            k=randint(1,6)
            if z+k<7: #if the sum of teh two dices is less than 7 Larry wins 
                l=l+1
            else:
                m=m+1
    return N(l/n)


lamarA(100)
︡10303ac4-a40a-4fcf-a351-eee4f40bd79d︡{"stdout":"0.530000000000000\n"}︡{"done":true}
︠a9889b61-07e8-4b2b-9132-1c4919184990︠
︡824b8d7b-be69-45a3-8f89-c9fd40dc02fa︡
︠1556fa73-b476-4065-8602-32346bbc0731︠


#Exercise 4
def blueleft(n):
    c=0 # start the counter 
    for j in range(n):
        x=uniform(0,1) #Probability for Person 1
        y=uniform(0,1) #Probability for PErson 2
        if x<0.27 and y<0.11: # if person1 has blue eyes and person2 is left handed increase the counter
            c=c+1
    return N(c/n) 

blueleft(1000)
︡085099b3-624d-4b80-a497-1be57d116bc1︡{"stdout":"0.0320000000000000\n"}︡{"done":true}
︠1031c287-8e00-4d6c-b329-7d7785e0b3e2︠
      
        

   

   









