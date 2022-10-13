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

###########################################################################
######################            OUTPUT           ########################
###########################################################################


# Apply extremes() over temp with sapply()
min_max_s <- sapply(temp, extremes)
min_max_s
    [,1] [,2] [,3] [,4] [,5] [,6] [,7]
min   -1    5   -3   -2    2   -3    1
max    9   13    8    7    9    9    9
# Apply extremes() over temp with lapply()
min_max_l <- lapply(temp, extremes)
min_max_l
[[1]]
min max 
 -1   9 

[[2]]
min max 
  5  13 

[[3]]
min max 
 -3   8 

[[4]]
min max 
 -2   7 

[[5]]
min max 
  2   9 

[[6]]
min max 
 -3   9 

[[7]]
min max 
  1   9 
