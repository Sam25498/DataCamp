# temp is already available in the workspace

# Definition of the basics() function
basics <- function(x) {
  c(min = min(x), mean = mean(x), median = median(x), max = max(x))
}

# Fix the error:
vapply(temp, basics, numeric(4))

#OUTPUT
vapply(temp, basics, numeric(4))
       [,1] [,2] [,3] [,4] [,5] [,6] [,7]
min    -1.0    5 -3.0 -2.0  2.0 -3.0  1.0
mean    4.8    9  2.2  2.4  5.4  4.6  4.6
median  6.0    9  3.0  2.0  5.0  5.0  4.0
max     9.0   13  8.0  7.0  9.0  9.0  9.0
