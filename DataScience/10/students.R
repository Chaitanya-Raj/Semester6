getmode <- function(v) {
    uniqv <- unique(v)
    uniqv[which.max(tabulate(match(v, uniqv)))]
}

agefilter <- function(v) {
    if (v < 22) {
        return(TRUE)
    } else {
        return(FALSE)
    }
}

students <- c(20, 20, 20, 20, 20, 21, 21, 21, 22, 22, 22, 22, 23, 23, 23)
print(students)

print("Median age of students under 22 : ")
print(median(Filter(agefilter, students)))

print("Median age of all students : ")
print(median(students))

print("Mean age of all students : ")
print(mean(students))

print("Modal age of all students : ")
print(getmode(students))

students <- c(students, c(23, 23))
print(students)

print("Median age of all students : ")
print(median(students))

print("Mean age of all students : ")
print(mean(students))

print("Modal age of all students : ")
print(getmode(students))