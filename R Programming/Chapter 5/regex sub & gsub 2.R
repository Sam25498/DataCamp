awards <- c("Won 1 Oscar.",
  "Won 1 Oscar. Another 9 wins & 24 nominations.",
  "1 win and 2 nominations.",
  "2 wins & 3 nominations.",
  "Nominated for 2 Golden Globes. 1 more win & 2 nominations.",
  "4 wins & 1 nomination.")

sub(".*\\s([0-9]+)\\snomination.*$", "\\1", awards)
#output: A vector of character strings containing "Won 1 Oscar.", "24", "2", "3", "2", "1".
# because The ([0-9]+) selects the entire number that comes before the word “nomination” in the string, and the entire match gets replaced by this number because of the \\1 that reference to the content inside the parentheses. 
#The next video will get you up to speed with times and dates in R!
