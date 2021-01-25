palindrome <- function(string, i, j) {
    if (i == j) {
        return(TRUE)
    }
    if (substring(string, i, i) == substring(string, j, j)) {
        return(palindrome(string, i + 1, j - 1))
    }
    else {
        return(FALSE)
    }
}
string <- readline("Enter a string to check for palindrome : ")
print(paste("Result : ", palindrome(string, 1, nchar(string))))