# temp has already been defined in the workspace
str(temp)

# Use lapply() to find each day's minimum temperature
min_temp <- lapply(temp, min)
min_temp


# Use sapply() to find each day's minimum temperature
min_temp_s <- sapply(temp, min)
min_temp_s


# Use lapply() to find each day's maximum temperature
max_temp <- lapply(temp, max)
max_temp

# Use sapply() to find each day's maximum temperature
max_temps <- sapply(temp, max)
max_temps

######################################################################################################################
###########################                OUTPUT                          ###########################################
######################################################################################################################

# temp has already been defined in the workspace
str(temp)
List of 7
 $ : num [1:5] 3 7 9 6 -1
 $ : num [1:5] 6 9 12 13 5
 $ : num [1:5] 4 8 3 -1 -3
 $ : num [1:5] 1 4 7 2 -2
 $ : num [1:5] 5 7 9 4 2
 $ : num [1:5] -3 5 8 9 4
 $ : num [1:5] 3 6 9 4 1
# Use lapply() to find each day's minimum temperature
min_temp <- lapply(temp, min)
min_temp
[[1]]
[1] -1

[[2]]
[1] 5

[[3]]
[1] -3

[[4]]
[1] -2

[[5]]
[1] 2

[[6]]
[1] -3

[[7]]
[1] 1
# Use sapply() to find each day's minimum temperature
min_temp_s <- sapply(temp, min)
min_temp_s
[1] -1  5 -3 -2  2 -3  1
# Use lapply() to find each day's maximum temperature
max_temp <- lapply(temp, max)
max_temp
[[1]]
[1] 9

[[2]]
[1] 13

[[3]]
[1] 8

[[4]]
[1] 7

[[5]]
[1] 9

[[6]]
[1] 9

[[7]]
[1] 9
# Use sapply() to find each day's maximum temperature
max_temps <- sapply(temp, max)
max_temps
[1]  9 13  8  7  9  9  9
