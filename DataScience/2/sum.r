n <- as.integer(readline("Enter the limit of numbers that you want to sum : "))
sum <- 0
for (i in 1:n) {
  sum <- sum + i
}
print(sum)