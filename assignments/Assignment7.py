"""
A7 - CollegeData Analysis
Author: Filippo Riva

Dataset: CollegeData.csv

This script answers:

1) Applications and Enrollment
   a) Nationwide:
      - Total new students enrolled (sum of Enroll)
      - Percent enrolled in private schools
   b) List all pairs of schools whose combined applications (Apps) is exactly 7000
   c) Print schools with Accepted/Applications ratio < 0.4 (most selective)

2) Making Choices
   a) "Lisa Criterion":
      - Private school, Enroll < 2000
      - Lisa Criterion = Grad.Rate - 5*(S.F.Ratio)
      - Print schools with Lisa Criterion > 55 and their score
   b) "Nikki Criterion":
      - Public school (Private == "No")
      - Top10perc > 50
      - Accepted/Applications < 0.75
      - Print schools with Top10perc and Accepted/Applications ratio
"""

import pandas as pd


# ------------------------------------------------------------
# Load dataset
# ------------------------------------------------------------
cd1 = pd.read_csv("CollegeData.csv")

# Helpful columns as lists (keeps your original style)
schlist = cd1["School"].tolist()
privatelist = cd1["Private"].tolist()
appslist = cd1["Apps"].tolist()
acceptlist = cd1["Accept"].tolist()
enrolllist = cd1["Enroll"].tolist()
gradrate = cd1["Grad.Rate"].tolist()
sfratio = cd1["S.F.Ratio"].tolist()
top10perclist = cd1["Top10perc"].tolist()


# ------------------------------------------------------------
# 1a) Nationwide: total enrolled + percent in private
# ------------------------------------------------------------
total_enrolled = cd1["Enroll"].sum()

private_enrolled = 0
for j in range(len(privatelist)):
    if privatelist[j] == "Yes":
        private_enrolled += enrolllist[j]

percent_private = private_enrolled / total_enrolled

print("1a) Nationwide total new students enrolled =", total_enrolled)
print("1a) New students enrolled in private schools =", private_enrolled)
print("1a) Percent enrolled in private schools =", percent_private)


# ------------------------------------------------------------
# 1b) Pairs of schools with Apps sum exactly 7000
# ------------------------------------------------------------
print("\n1b) Pairs of schools with combined applications = 7000:")
n_schools = len(schlist)

for j in range(n_schools):
    for i in range(j + 1, n_schools):  # avoid duplicates
        if appslist[j] + appslist[i] == 7000:
            print(schlist[j], "and", schlist[i])


# ------------------------------------------------------------
# 1c) Most selective: Accepted/Applications < 0.4
# ------------------------------------------------------------
print("\n1c) Schools with Accepted/Applications ratio < 0.4:")
for j in range(n_schools):
    # Avoid division by zero just in case (shouldn't happen, but safe)
    if appslist[j] != 0:
        ratio = acceptlist[j] / appslist[j]
        if ratio < 0.4:
            print(schlist[j])


# ------------------------------------------------------------
# 2a) Lisa Criterion (private, enroll < 2000, score > 55)
# Lisa Criterion = Grad.Rate - 5*(S.F.Ratio)
# ------------------------------------------------------------
print("\n2a) Lisa Criterion (Enroll < 2000 AND LisaCriterion > 55):")
for j in range(n_schools):
    lisa_criterion = gradrate[j] - (5 * sfratio[j])
    if enrolllist[j] < 2000 and lisa_criterion > 55:
        print(schlist[j], lisa_criterion)


# ------------------------------------------------------------
# 2b) Nikki: selective public school
# Conditions:
#   - Public: Private == "No"
#   - Top10perc > 50
#   - Accepted/Applications < 0.75
# ------------------------------------------------------------
print("\n2b) Nikki's schools (public, Top10perc > 50, Accept/Apps < 0.75):")
for j in range(n_schools):
    if appslist[j] != 0:
        ratioaa = acceptlist[j] / appslist[j]
        if privatelist[j] == "No" and top10perclist[j] > 50 and ratioaa < 0.75:
            print(schlist[j], top10perclist[j], ratioaa)
