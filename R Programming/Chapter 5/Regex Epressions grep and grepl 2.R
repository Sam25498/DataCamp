# The emails vector has already been defined for you

emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")
# Use grepl() to match for .edu addresses more robustly
grepl(pattern = "@.*\\.edu$", x = emails)
[1]  TRUE FALSE FALSE FALSE  TRUE FALSE

# Use grep() to match for .edu addresses more robustly, save result to hits
hits <- grep(pattern =  "@.*\\.edu$", x = emails)
hits
#[1] 1 5

# Subset emails using hits
emails[hits[1:2]]
[1] "john.doe@ivyleague.edu"   "quant@bigdatacollege.edu"
