library(ggplot2)
library(lattice)

bollywood <- read.csv("Bollywood.csv")

# Print dataset
print("DATASET")
print(bollywood)

# print number of NA values
print(paste("Total number of missing values :", sum(is.na(bollywood$Openingcollection))))

# replacing na with median value
bollywood$Openingcollection[is.na(bollywood$Openingcollection)] <- median(bollywood$Openingcollection, na.rm = TRUE)
print("After replacing NA values with the median")
print(bollywood)

# create barchart
agg_oc <- aggregate(Openingcollection ~ Genre, bollywood, mean)
print(barchart(agg_oc$Genre ~ agg_oc$Openingcollection, main = "Exam roll no. 18021570017", ylab = "Genre", xlab = "Average Opening Collection", box.ratio = 3, fill = "red"))

# Subset of movies in superhit category
print("Movies in Superhit category")
print(subset(bollywood, Verdict == "Super Hit"))

# function to return greater than average total collection
gtatc_movies <- function() {
    return(subset(bollywood, bollywood$TotalCollection > mean(bollywood$TotalCollection))["Movie"])
}

print("Movies which have TotalCollection more than average TotalCollection")
print(gtatc_movies())