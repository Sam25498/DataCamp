# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Calculate the mean absolute deviation
abs_mean_sd <- mean(abs(linkedin - facebook), na.rm = TRUE)
abs_mean_sd

################## Output  #####################

# Calculate the mean absolute deviation
abs_mean_sd <- mean(abs(linkedin - facebook), na.rm = TRUE)
abs_mean_sd
[1] 4.8
