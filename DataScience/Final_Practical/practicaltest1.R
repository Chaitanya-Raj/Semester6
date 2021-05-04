print(getwd())
bollywood <- read.csv("Bollywood.csv")
library(lattice)
library(ggplot2)
print(bollywood)

print("query i")
sum(is.na(bollywood$Openingcollection))
bollywood$Openingcollection[is.na(bollywood$Openingcollection)] <- median(bollywood$Openingcollection, na.rm = TRUE)
print(bollywood)

print("query ii")
attach(bollywood)
A1 <- aggregate(Openingcollection ~ Genre, bollywood, mean)
print(barchart(A1$Genre ~ A1$Openingcollection, main = "Exam roll no. 18021570038", ylab = "Genre", xlab = "Average", box.ratio = 3))

print("query iii")
print("Movies in Superhit category")
print(subset(bollywood, Verdict == "Super Hit"))

print("query iv")
movie <- function() {
  return(subset(bollywood, TotalCollection > mean(TotalCollection))["Movie"])
}

print("Movies which have TotalCollection more than average Tcollection")
print(movie())