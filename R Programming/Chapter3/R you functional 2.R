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
