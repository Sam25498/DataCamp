# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Adapt/extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  
  # Add if statement with break
  if (li > 16) {
    print( "This is ridiculous, I'm outta here!")
    break

  }
  
  # Add if statement with next
  else {
    if (li < 5) {
      print("This is too embarrassing!" )
      next
    }
  }
  
  #############  OUTPUT  ##############
  [1] "You're popular!"
[1] 16
[1] "Be more visible!"
[1] 9
[1] "You're popular!"
[1] 13
[1] "Be more visible!"
[1] 5
[1] "Be more visible!"
[1] "This is too embarrassing!"
[1] "You're popular!"
[1] "This is ridiculous, I'm outta here!"
