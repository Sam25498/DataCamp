# temp is already available in the workspace

# Definition of print_info()
print_info <- function(x) {
  cat("The average temperature is", mean(x), "\n")
}

# Apply print_info() over temp using sapply()
info_s <- sapply(temp, print_info)
info_s

# Apply print_info() over temp using lapply()
info_l <- lapply(temp, print_info)
info_l
