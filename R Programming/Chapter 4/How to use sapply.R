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
