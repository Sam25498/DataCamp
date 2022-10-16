# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grepl() to match for "edu"
grepl(pattern = "edu", x = emails)


# Use grep() to match for "edu", save result to hits
hits <- grep(pattern = "edu", x = emails)
hits
# Subset emails using hits
hits[1:4]
emails[hits[1]]
emails[hits[1:4]]


#OUTPUT

# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")
# Use grepl() to match for "edu"
grepl(pattern = "edu", x = emails)
[1]  TRUE  TRUE FALSE  TRUE  TRUE FALSE
# Use grep() to match for "edu", save result to hits
hits <- grep(pattern = "edu", x = emails)
hits
[1] 1 2 4 5
# Subset emails using hits
hits[1:4]
[1] 1 2 4 5
emails[hits[1]]
[1] "john.doe@ivyleague.edu"
emails[hits[1:4]]
[1] "john.doe@ivyleague.edu"   "education@world.gov"     
[3] "invalid.edu"              "quant@bigdatacollege.edu"
