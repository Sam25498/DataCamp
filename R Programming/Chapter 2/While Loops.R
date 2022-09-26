while(condition) {
  expr
}

ctr <- 1
while(ctr <= 7) {
  print(paste("ctr is set to", ctr))
  ctr <- ctr + 1
}
###########################################
#Exercise 1
# Initialize the speed variable
speed <- 64

# Code the while loop
while (speed > 30) {
  print("Slow down!")
  speed <- speed - 7
}

# Print out the speed variable
speed 

############     OUTPUT   ################

[1] "Slow down!"
[1] "Slow down!"
[1] "Slow down!"
[1] "Slow down!"
[1] "Slow down!"
# Print out the speed variable
speed
[1] 29

###########################################
#Exercise 2
# Initialize the speed variable
speed <- 64

# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is",speed))
  if (speed > 48 ) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6 
  }
}

############     OUTPUT   ################

[1] "Your speed is 64"
[1] "Slow down big time!"
[1] "Your speed is 53"
[1] "Slow down big time!"
[1] "Your speed is 42"
[1] "Slow down!"
[1] "Your speed is 36"
[1] "Slow down!"
