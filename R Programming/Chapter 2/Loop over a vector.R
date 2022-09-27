#######################    Exercise 1     #####################
# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Loop version 1
for (v in linkedin) {
    print(v)
}


# Loop version 2
for (i in 1:length(linkedin)) {
    print(linkedin[i])
}

####################     OUTPUT     #########################
# Loop version 1
for (v in linkedin) {
    print(v)
}
[1] 16
[1] 9
[1] 13
[1] 5
[1] 2
[1] 17
[1] 14
# Loop version 2
for (i in 1:length(linkedin)) {
    print(linkedin[i])
}
[1] 16
[1] 9
[1] 13
[1] 5
[1] 2
[1] 17
[1] 14
