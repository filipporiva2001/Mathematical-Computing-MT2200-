︠64b22af6-9bf7-439a-bd12-547981d29680s︠
f = [-3, 4, -8, 7, 0, 7, 10]

def noc(f):
    j = 0
    c = 0
    f = f[:]
    
    # Remove zeros from the list
    while j < len(f): # while loop to go through the list and deleting all zeros
        if f[j] == 0:
            del f[j]
        else:
            j = j + 1
    
    # Iterate through the list and check if the sign changes
    for i in range(1, len(f)):
        if f[i] * f[i-1] < 0:  # If the multiplication result is negative, the signs have changed!
            c = c + 1 #Increase the counter every time the sign changes 
    
    return c

def drs(f):
    c = noc(f)  # Get the count of sign changes for positive roots
    pr = [] #open teh list to store the positive roots
    
    # Subtract even numbers from c to get possible positive roots
    for i in range(0, c + 1, 2): # for loop going from 0 to c every 2(smallest even number)
        result = c - i
        if result >= 0:
            pr = pr + [result] #paste the results in the list
    
    # Now we simulate f(-x) by flipping the signs based on the index
    negf = []
    for i in range(len(f)):
        if i % 2 == 0:  # If the index is even, keep the value as it is
            negf = negf + [f[i]]
        else:  # If the index is odd, negate the value
            negf = negf + [-f[i]]
    
    # Count the number of sign changes in the negated list (f(-x))
    cneg = noc(negf)
    
    nr = []
    # Subtract even numbers from cneg to get possible negative roots
    for i in range(0, cneg + 1, 2):
        result = cneg - i
        if result >= 0:
            nr = nr + [result]
    
    return pr, nr  # Return both positive and negative roots


print(noc(f))  # Test noc
print(drs(f))  # Test drs

x = var('x')
f = 10*x^6 + 7*x^5 + 7*x^3 - 8*x^2 + 4*x - 3

# Calculate the real roots of the polynomial
roots = f.roots(ring=RR, multiplicities=False)  # Find real roots

# Separate positive and negative roots
positiveroots = [r for r in roots if r > 0]  # Filter positive roots
negativeroots = [r for r in roots if r < 0]  # Filter negative roots

# Generate the polynomial plot over the interval [-20, 20]
plotpolynomial = plot(f, (x, -20, 20), ymin=-50, ymax=50, color="red", legend_label="Polynomial f(x)")

# Add points for positive and negative roots
plotpositivepoints = point([(r, f.subs(x=r)) for r in positiveroots], color="green", size=30, legend_label="Positive Roots")
plotnegativepoints = point([(r, f.subs(x=r)) for r in negativeroots], color="blue", size=30, legend_label="Negative Roots")

# Show the final plot with the points
show(plotpolynomial + plotpositivepoints + plotnegativepoints)




︡50d1b9c3-fe48-4958-82da-9171294bb445︡{"stdout":"3\n"}︡{"stdout":"([3, 1], [1])\n"}︡{"file":{"filename":"/tmp/tmpzh93zipm/tmp_z9vh5c89.svg","show":true,"text":null,"uuid":"56ec6de2-f417-4eca-8056-bc8adabdce10"},"once":false}︡{"done":true}
︠36716210-6506-4623-97d5-57e82ead7ecf︠









