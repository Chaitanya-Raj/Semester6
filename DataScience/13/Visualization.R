Data <- airquality
View(Data)
library(lattice)
library(ggplot2)
attach(Data)
xyplot(Ozone ~ Temp)
ggplot(Data, aes(Ozone, Temp)) +
    geom_point()
plot(Ozone, Temp)
xyplot(Ozone ~ Wind)
ggplot(Data, aes(Ozone, Wind)) +
    geom_point()
plot(Ozone, Wind)
xyplot(Ozone ~ Solar.R)
ggplot(Data, aes(Ozone, Solar.R)) +
    geom_point()
plot(Ozone, Solar.R)


A1 <- aggregate(Ozone ~ Day, Data, mean)
barchart(A1$Day ~ A1$Ozone, main = "Average Ozone density per day", panel = lattice.getOption("panel.barchart"), default.prepanel = lattice.getOption("prepanel.default.barchart"), box.ratio = 3, ylab = "Avg.Ozone", xlab = "Day", col = A1, horizontal = FALSE)
barplot(A1$Ozone, names.arg = A1$Day)
ggplot(A1, aes(x = Day, y = Ozone)) +
    geom_bar(stat = "identity") +
    ggtitle("Average Ozone density per day") +
    coord_flip()
A2 <- aggregate(Ozone ~ Month, Data, mean)
barchart(A1$Month ~ A1$Ozone, main = "Average Ozone density per month", ylab = "Month", xlab = "Ozone", box.ratio = 3)
barplot(A2$Ozone, names.arg = A2$Month)
ggplot(A2, aes(x = Month, y = Ozone)) +
    geom_bar(stat = "identity") +
    ggtitle("Average Ozone density per Month") +
    coord_flip()
A3 <- aggregate(Temp ~ Day, Data, mean)
barchart(A3, main = "Average Temp per day", box.ratio = 3)
barplot(A3$Temp, names.arg = A3$Day)
ggplot(A3, aes(x = Day, y = Temp)) +
    geom_bar(stat = "identity") +
    ggtitle("Average Temprature per day") +
    coord_flip()
A4 <- aggregate(Temp ~ Month, Data, mean)
barchart(A4, main = "Average Temp per month", box.ratio = 3)
barplot(A4$Temp, names.arg = A4$Month)
ggplot(A4, aes(x = Month, y = Temp)) +
    geom_bar(stat = "identity") +
    ggtitle("Average Temprature per Month") +
    coord_flip()


hist(Ozone)
ggplot(Data, aes(x = Ozone)) +
    geom_histogram(color = "black", fill = "white")
histogram(Ozone, Data)
hist(Solar.R)
ggplot(Data, aes(x = Solar.R)) +
    geom_histogram(color = "black", fill = "white")
histogram(Solar.R, Data)
hist(Wind)
ggplot(Data, aes(x = Wind)) +
    geom_histogram(color = "black", fill = "white")
histogram(Wind, Data)
hist(Temp)
ggplot(Data, aes(x = Temp)) +
    geom_histogram(color = "black", fill = "white")
histogram(Temp, Data)