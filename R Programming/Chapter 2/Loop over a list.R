# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1
for (i in nyc) {
    print(i)
}




# Loop version 2
for (t in 1:length(nyc)) {
    print(nyc[[t]])
}

##########################     OUTPUT     ##########################

# Loop version 1
for (i in nyc) {
    print(i)
}
[1] 8405837
[1] "Manhattan"     "Bronx"         "Brooklyn"      "Queens"       
[5] "Staten Island"
[1] FALSE
# Loop version 2
for (t in 1:length(nyc)) {
    print(nyc[[t]])
}
[1] 8405837
[1] "Manhattan"     "Bronx"         "Brooklyn"      "Queens"       
[5] "Staten Island"
[1] FALSE
