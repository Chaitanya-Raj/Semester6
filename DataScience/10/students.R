getmode <- function(v) {
    t <- table(v)
    return(names(which(t == max(t))))
}


students <- c(20, 20, 20, 20, 20, 21, 21, 21, 22, 22, 22, 22, 23, 23, 23)
print("Age of all the students in class : ")
print(students)

print("Median age of students under 22 : ")
print(median(students[students < 22]))

print("Median age of all students : ")
print(median(students))

print("Mean age of all students : ")
print(mean(students))

print("Modal age of all students : ")
print(getmode(students))

students <- c(students, c(23, 23))
print("Two new students, both of age 23 join the class : ")
print(students)

print("Median age of all students : ")
print(median(students))

print("Mean age of all students : ")
print(mean(students))

print("Modal age of all students : ")
print(getmode(students))