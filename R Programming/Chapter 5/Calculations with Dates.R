# day1, day2, day3, day4 and day5 are already available in the workspace

# Difference between last and first pizza day
diff <- day5 - day1
diff

# Create vector pizza
pizza <- c(day1, day2, day3, day4, day5)

# Create differences between consecutive pizza days: day_diff
day_diff <- diff(pizza)
day_diff


# Average period between two consecutive pizza days
avg <- mean(day_diff)
avg


#########################################################
#################     OUTPUT    #########################

# Difference between last and first pizza day
diff <- day5 - day1
diff
Time difference of 18 days
# Create vector pizza
pizza <- c(day1, day2, day3, day4, day5)
# Create differences between consecutive pizza days: day_diff
day_diff <- diff(pizza)
day_diff
Time differences in days
[1] 2 5 6 5
# Average period between two consecutive pizza days
avg <- mean(day_diff)
avg
Time difference of 4.5 days
