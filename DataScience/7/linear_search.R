linear_search <- function(vec) {
  flag <- FALSE
  num <- as.integer(readline("Enter element to search : "))
  j <- 1
  for (i in vec) {
    if (i == num) {
      print(paste("Element found at position", j))
      flag <- TRUE
    }
    j <- j + 1
  }
  if (flag == FALSE) {
    print("Element not found")
  }
}
n <- as.integer(readline("Enter number of elements:"))
x <- c()
for (i in 1:n) {
  x[i] <- as.integer(readline(paste("Enter element", i, ": ")))
}
linear_search(x)