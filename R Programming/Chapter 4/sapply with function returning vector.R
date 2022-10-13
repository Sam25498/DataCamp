# temp is already available in the workspace

# Create a function that returns min and max of a vector: extremes
extremes <- function(x) {
  c(min = min(x), max = max(x))
}

# Apply extremes() over temp with sapply()
min_max_s <- sapply(temp, extremes)
min_max_s


# Apply extremes() over temp with lapply()
min_max_l <- lapply(temp, extremes)
min_max_l
