# Definition of character strings representing times
str1 <- "May 23, '96 hours:23 minutes:01 seconds:45"
str2 <- "2012-3-12 14:23:08"

# Convert the strings to POSIXct objects: time1, time2
time1 <- as.POSIXct(str1, format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
time2 <- as.POSIXct(str2, format = "%Y-%m-%d %T")

# Convert times to formatted strings
format(time1, "%M")
format(time2, "%I:%M %p")

###############################################
#OUTPUT
# Convert times to formatted strings
format(time1, "%M")
[1] "01"
format(time2, "%I:%M %p")
[1] "02:23 PM"
