random_numbers <- sample(10:500, 20, replace = TRUE)

random_mean <- mean(random_numbers)
random_median <- median(random_numbers)

print(random_numbers)
print(paste("Mean :", random_mean))
print(paste("Median :", random_median))

plot(x = random_numbers, y = 1:20, main = "Scatter plot with mean & median lines", xlab = "Number", ylab = "Index", col = "blue")
abline(v = random_mean, col = "red")
abline(v = random_median, col = "green")