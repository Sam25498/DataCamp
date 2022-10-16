# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "global@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")
            
# Use sub() to convert the email domains to datacamp.edu
sub(pattern = "@.*\\.edu$", replacement = "@datacamp.edu", x = emails)
[1] "john.doe@datacamp.edu"    "education@world.gov"     
[3] "global@peace.org"         "invalid.edu"             
[5] "quant@datacamp.edu"       "cookie.monster@sesame.tv"
