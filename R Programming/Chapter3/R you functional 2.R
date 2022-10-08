# Define the interpret_all() function
# views: vector with data to interpret
# return_sum: return total number of views on popular days?
interpret_all <- function(views, return_sum=TRUE) {
  count <- 0

  for (v in views) {
    count <- count + interpret(v)

  }

  if (return_sum == TRUE) {
    return(count)

  } else {
    return(NULL)

  }
}

# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
interpret_all(facebook)

#OUTPUT

# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
[1] "You're popular!"
[1] "Try to be more visible!"
[1] "Try to be more visible!"
[1] "Try to be more visible!"
[1] "Try to be more visible!"
[1] "You're popular!"
[1] "Try to be more visible!"
[1] 33
interpret_all(facebook)
[1] "You're popular!"
[1] "Try to be more visible!"
[1] "Try to be more visible!"
[1] "You're popular!"
[1] "Try to be more visible!"
[1] "Try to be more visible!"
[1] "Try to be more visible!"
[1] 33
