# Create a function pow_two()

pow_two <- function(x) {
    x * x
} 

# Use the function
pow_two(12)  #144


# Create a function sum_abs()
sum_abs <- function(a,b) {
    abs(a) + abs(b)
}


# Use the function
sum_abs(-2,3)  #5


#################   Part 2     ####################
# Define the function hello()
hello <- function() {
    print("Hi there!")
    return(TRUE)
}


# Call the function hello()
hello()

# Output
#[1] "Hi there!"
#[1] TRUE


########################       Part 3     #########################
# Finish the pow_two() function
pow_two <- function(x, print_info = TRUE) {
  y <- x ^ 2
  if (print_info == TRUE) {
    print(paste(x, "to the power two equals", y))

  }
  
  return(y)
}

pow_two(5)
# Output
[1] "5 to the power two equals 25"
[1] 25
