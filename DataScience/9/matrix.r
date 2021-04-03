m <- matrix(1:6, nrow = 2, ncol = 3)
dimnames(m) <- list(c("X", "Y"), c("A", "B", "C"))

print(paste("Rows : ", nrow(m), " Columns : ", ncol(m)))

print(paste("Element [1][2] : ", m[1, 2]))

print("Full Matrix  : ")
print(m)

print("Row 1 : ")
print(m[1, ])

print("Column 2 : ")
print(m[, 2])

m[1, 2] <- 9
print(paste("Element [1][2] after change : ", m[1, 2]))

m <- cbind(m, c(7:8))
colnames(m)[4] <- "D"
print("After adding column : ")
print(m)

m <- rbind(m, c(0))
rownames(m)[3] <- "Z"
print("After adding row : ")
print(m)

names <- list(c("X", "Y", "Z"), c("A", "B", "C", "D"))
n <- matrix(1:12, nrow = 3, ncol = 4, dimnames = names, byrow = TRUE)
print("Row Major Matrix : ")
print(n)

print("Addition : ")
print(m + n)

print("Subtraction : ")
print(m - n)

print("Multiplication : ")
print(m * n)

print("Division : ")
print(m / n)

str <- "NOT A MATRIX"
print("Check whether an object is a matrix : ")
print(is.matrix(str))
print(is.matrix(m))

print("Sum of Rows : ")
print(rowSums(m))

print("Mean of Column 2 : ")
print(mean(m[, 2]))