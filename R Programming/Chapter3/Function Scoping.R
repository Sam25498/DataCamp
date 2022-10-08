>
pow_two <- function(x) {
  y <- x ^ 2
  return(y)
}
pow_two(4)
y
x 

#Output!
[1] 16
Error: object 'y' not found
Error: object 'x' not found

#The two errors that arose are a result of trying to access variables from a function outside of it.
#Function Scoping - It implies that variables that are defined inside a function are not accessible outside that function. 
