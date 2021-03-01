
rectangle <- function(l, b) {
  b <- list(perimeter(l, b), area(l, b))
}

perimeter <- function(len, bre) {
  print("Perimeter : ")
  print(2 * (len + bre))
}

area <- function(len, bre) {
  print("Area : ")
  print(len * bre)
}

rectangle(5, 10)