lmax <- function(a) {
    maxim <- a[1]
    for (i in a) {
        if (i > maxim) {
            maxim <- i
        }
    }
    return(maxim)
}

size <- as.numeric(readline("Enter the size of the list : "))
x <- list()
for (i in 1:size) {
    x[i] <- as.numeric(readline(paste("Enter element ", i, " : ")))
}
print(paste("Largest element of the list : ", lmax(x)))