binary_search <- function(vec, s, e, num) {
  if (e >= s) {
    mid <- (e + s) %/% 2
    if (vec[mid] == num) {
      return(mid)
    } else if (vec[mid] > num) {
      return(binary_search(vec, s, (mid - 1), num))
    }
    else {
      return(binary_search(vec, (mid + 1), e, num))
    }
  }
  else {
    return(-1)
  }
}
n <- as.integer(readline("Enter number of elements :"))
x <- c()
for (i in 1:n) {
  x[i] <- as.integer(readline(paste("Enter element", i, ": ")))
}
num <- as.integer(readline("Enter element to search : "))
sort(x)
if (binary_search(x, 1, length(x), num) == -1) {
  print("Element not found")
} else {
  print(paste("Element found at", binary_search(x, 1, length(x), num)))
}