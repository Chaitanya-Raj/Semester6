size <- as.numeric(readline("Enter the size of the vector : "))
x <- c()
for (i in 1:size) {
    x[i] <- as.numeric(readline(paste("Enter element ", i, " : ")))
}
print(paste("Sum of the vector : ", sum(x)))