︠250bd5d6-9966-4358-a622-3485e6cbbaa7︠
#Exercise 1
#a)Applications and Enrollment.
#The “Enrolled” column counts the number of new students (freshmen and transfers) who enrolled that year. It does not count returning students.
#o Nationwide, how many new students enrolled?
#o What percentage of these students enrolled in private schools?

import pandas #Importing pandas to work with the dataset
cd1=pandas.read_csv('CollegeData.csv') #Read the csv File 
enrolllist=cd1['Enroll'].sum() #Use sum() command to sum all the values in teh Enroll column 
 
privatelist = cd1['Private'].tolist()  # Convert 'Private' column to a list
c = 0
for j in range(len(privatelist)):
    if privatelist[j] == 'Yes':
        c = c + cd1['Enroll'][j]  # Accumulate enrollment values for private schools


print(enrolllist)
print(c)
print(N(c/enrolllist))
︡706513ee-135a-494a-a169-f9a62b6519fb︡{"stdout":"606039\n"}︡{"stdout":"258174\n"}︡{"stdout":"0.426002286981531\n"}︡{"done":true}
︠d7ca9dd5-9acb-475a-96d3-5d99fa33a04as︠
#b.List all pairs of schools whose combined applications is exactly 7,000
import pandas #Importing pandas to work with the dataset
cd1=pandas.read_csv('CollegeData.csv') #Read the csv File 
appslist = cd1['Apps'].tolist()
schlist = cd1['School'].tolist()

ans = []

for j in range(777):  # Loop through the list of schools
    for i in range(j + 1, 777):  # Loop through schools after the j-th school to avoid duplication
        if appslist[j] + appslist[i] == 7000:
            print(schlist[j], schlist[i])


︡b7c01333-2638-4f24-b5a5-77e09297eda2︡{"stdout":"Bucknell University"}︡{"stdout":" University of Mobile\nClarke College Washington State University\nColorado College Georgia State University\nColumbia University"}︡{"stdout":" Lesley College\nFerrum College Wake Forest University\nHusson College"}︡{"stdout":" University of Nebraska at Lincoln\nIllinois Institute of Technology University of Wisconsin at Milwaukee\nKansas Wesleyan University Massachusetts Institute of Technology\nLe Moyne College University of Northern Colorado\nLewis and Clark College Marshall University\nLouisiana State University at Baton Rouge Manchester College\nLynchburg College University of Wisconsin at Milwaukee\nMonmouth College"}︡{"stdout":" Skidmore College\nMorris College Southwest Missouri State University\nMuskingum College Northern Arizona University\nNorthern Arizona University Savannah Coll. of Art and Design\nProvidence College Whitman College\nUniversity of Northern Colorado"}︡{"stdout":" Virginia Wesleyan College\n"}︡{"done":true}
︠db7885da-6636-4aeb-9f35-acabc4fb3776s︠
#c. In terms of the ratio Accepted/Applications, what are the most selective schools? Print a list of schools whose Accepted/Applications ratios are less than 0.4

appslist = cd1['Apps'].tolist()
schlist = cd1['School'].tolist()
acceptlist=cd1['Accept'].tolist()



for j in range(len(schlist)):
    if acceptlist[j]/appslist[j] < 0.4:
        print(schlist[j])
︡710e8f36-5ac4-4d25-b3d8-bce5061685b8︡{"stdout":"Amherst College\nBowdoin College\nBrown University\nColumbia University\nDartmouth College\nDuke University\nGeorgetown University\nHarvard University\nHuron University\nMassachusetts Institute of Technology\nPrinceton University\nRowan College of New Jersey\nSpelman College\nStockton College of New Jersey\nTalladega College\nUniversity of Virginia\nWashington and Lee University\nWilliams College\nYale University\n"}︡{"done":true}
︠e134d66c-4dc6-43e0-96e1-d4bb3d834e59︠

︡3b7d2d93-3ef7-4345-88cf-4840c27fb382︡
︠71c557f2-eb76-4550-819d-1aa2427d220a︠

︡ad942d34-25ce-41ff-bad3-a4287692a3f3︡
︠52deb9d9-5287-4bb8-a487-bdfdfb71d97ds︠
# 2 Making Choices
#a.Lisa is looking for a private school with new enrollment under 2000. She would like a high
#graduation rate and a low student/faculty ratio. She has defined her own “Lisa Criterion” as
#follows: The graduation rate minus 5 times the student/faculty ratio. Print a list of schools that have Lisa Criterion above 55 along with the Lisa Criterion for each school.
import pandas #Importing pandas to work with the dataset
cd1=pandas.read_csv('CollegeData.csv') #Read the csv File 

schlist = cd1['School'].tolist()
privatelist = cd1['Private'].tolist() 
enrolllist=cd1['Enroll'].tolist()
gradrate=cd1['Grad.Rate'].tolist()
sfratio=cd1['S.F.Ratio']

for j in range(len(privatelist)):
    lisacriterion= (gradrate[j] - (5 * sfratio[j]))
    if enrolllist[j]<2000 and lisacriterion > 55:
        print(schlist[j],lisacriterion)
︡9988c1cd-77c0-425b-a319-bf1a5a33c062︡{"stdout":"Amherst College 58.0\nBrown University 59.0\nColumbia University 69.5\nDartmouth College 74.5\nDuke University 72.0\nEmory University 71.0\nGeorgetown University 59.0\nGwynedd Mercy College 57.0\nHarvey Mudd College 59.0\nJohns Hopkins University 73.5\nMary Baldwin College 56.0\nNorthwestern University 58.0\nPrinceton University 57.0\nUniversity of Chicago 63.5\nWake Forest University 67.5\nWashington University 70.5\nYale University 70.0\n"}︡{"done":true}
︠df84ea11-51f7-4648-87ca-d22804378764︠
#b.Nikki is looking for a highly selective public school. She wants over 50% of the students to come from the top 10% of their high schools, and she wants the Accepted/Applications ratio to be below 0.75. Print a list of these schools along with the percentage who come from the top 10% and the Accepted/Applications ratio.
import pandas #Importing pandas to work with the dataset
cd1=pandas.read_csv('CollegeData.csv') #Read the csv File 

schlist = cd1['School'].tolist()
privatelist = cd1['Private'].tolist() 
appslist = cd1['Apps'].tolist()
acceptlist=cd1['Accept'].tolist()
top10perclist=cd1['Top10perc'].tolist()

for j in range(len(privatelist)):
    ratioaa= acceptlist[j]/appslist[j]
    if privatelist[j]=="No" and top10perclist[j] > 50 and ratioaa < 0.75:
        print(schlist[j],top10perclist[j],ratioaa)

︡361ef0d5-5b05-4468-a36e-e97595c191f6︡{"stdout":"College of William and Mary 68 0.4364198398201489\nGeorgia Institute of Technology 89 0.5776445068265919\nSUNY at Binghamton 60 0.42632925395837656\nSUNY College at Geneseo 56 0.5305885089555711\nTrenton State College 55 0.45854819516065054\nUniversity of California at Berkeley 95 0.4152367533839883\nUniversity of California at Irvine 85 0.6863931711045993\nUniversity of Florida 54 0.7100040176777822\nUniversity of Michigan at Ann Arbor 66 0.6756474519632414\nUniversity of Minnesota at Morris 56 0.5994513031550068\nUniversity of North Carolina at Chapel Hill 75 0.41004384762948753\nUniversity of Virginia 74 0.3397059751403874\n"}︡{"done":true}
︠87405add-d386-4330-acd5-c51f5ec5f275︠

︠f9bb709d-7f32-4599-910c-0f89406ff3ec︠

︠8a5c3cf9-3540-4cfc-a62b-a2409ae76322︠

︠aa2f971e-6761-4ff3-a3dc-8ee8511a394f︠









