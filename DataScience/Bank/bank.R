print(getwd())
setwd("D:/Semester6/DataScience/Bank")
bank <- read.csv("bank.csv")
# print("DATASET")
# print(bank)

print("Type of dataset")
print(class(bank))
print(mode(bank))
print(typeof(bank))
attach(bank)
print("Number of people who have taken loan based on their marital status, single and married separately ")
print("Married")
print(nrow(bank[(marital == "married") & (loan == "yes"), ]))
print("Single")
print(nrow(bank[(marital == "single") & (loan == "yes"), ]))

print("The salary and job of the people whose balance is less than 10000")
print(bank[which(salary < 10000), c("age", "salary")])

print("The salary of the people who have taken loan, over the age of 28")
print(bank[which(age > 28), c("salary")])

print("Information about number of people - issued credit card")
print(bank[which(y == "yes"), ])

print("Information about attributes for person with maximum age")
print(bank[which(age == max(age)), ])

print("Mean age of divorced people")
print(mean(bank[which(marital == "divorced"), c("age")]))
print("Mean salary of divorced people")
print(mean(bank[which(marital == "divorced"), c("salary")]))

bank <- cbind(bank, "Eligible for credit_card" = ((bank$marital == "married" & bank$salary > 60000) | (bank$marital == "single" & bank$salary > 40000 & bank$education == "tertiary") | (bank$marital == "divorced" & bank$salary > 50000 & bank$education == "tertiary")))
print(bank)