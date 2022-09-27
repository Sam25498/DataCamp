# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Code the for loop with conditionals
for (li in linkedin) {
  if (li > 10 ) {
    print("You're popular!")
    
  } else {
    print("Be more visible!")
    
  }
  print(li)
}

###############   OUTPUT   ##################
[1] "You're popular!"
[1] 16
[1] "Be more visible!"
[1] 9
[1] "You're popular!"
[1] 13
[1] "Be more visible!"
[1] 5
[1] "Be more visible!"
[1] 2
[1] "You're popular!"
[1] 17
[1] "You're popular!"
[1] 14
