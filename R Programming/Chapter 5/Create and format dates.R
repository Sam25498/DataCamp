# Definition of character strings representing dates
str1 <- "May 23, '96"
str2 <- "2012-03-15"
str3 <- "30/January/2006"

# Convert the strings to dates: date1, date2, date3
date1 <- as.Date(str1, format = "%b %d, '%y")
date2 <- as.Date(str2)
date3 <- as.Date(str3, format = "%d/%B/%Y")
date3


# Convert dates to formatted strings
format(date1, "%A")
format(date2, "%d")
format(date3, "%b %Y")

##############################################################
######################    OUTPUT    ##########################

date3
[1] "2006-01-30"
# Convert dates to formatted strings
format(date1, "%A")
[1] "Thursday"
format(date2, "%d")
[1] "15"
format(date3, "%b %Y")
[1] "Jan 2006"
