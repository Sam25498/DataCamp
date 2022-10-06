# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of linkedin
avg_li <- mean(linkedin)
avg_li

# Advanced average of linkedin
avg_li <- mean(linkedin, na.rm = TRUE)
avg_li
