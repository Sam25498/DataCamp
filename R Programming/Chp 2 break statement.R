ctr <- 1
while(ctr <= 7) {
  if (ctr %% 5 == 0) {
    break
  }
  print(paste("ctr is set to", ctr))
  ctr <- ctr + 1
}
#Output
"ctr is set to 1"
"ctr is set to 2"
"ctr is set to 3"
"ctr is set to 4"

###########################################
#Exercise 1
# Initialize the speed variable
speed <- 88

while (speed > 30) {
  print(paste("Your speed is", speed))
  
  # Break the while loop when speed exceeds 80
  if (speed > 80 ) {
    break
    
  }
  
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

############     OUTPUT   ################

[1] "Slow down!"
[1] "Slow down!"
[1] "Slow down!"
[1] "Slow down!"
[1] "Slow down!"
# Print out the speed variable
speed
[1] 29
