for (var in seq) {
  expr
}

cities <- c("New York", "Paris", "London", "Tokyo", "Rio de Janeiro", "Capetown")

for( city in cities) {
  print(city)
}

##############  OUTPUT #####################

"New York"
"Paris"
"London"
"Tokyo"
"Rio de Janeiro"
"Capetown"

##################################################
"break statements within for loops."
"stops the execution of for loop and abandons the execution all together."

cities <- list("New York", "Paris", "London", "Tokyo", "Rio de Janeiro", "Capetown")

for( city in cities) {
    if (nchar(city) == 6) {
      break
    }
  print(city)

  ##############  OUTPUT  ##############
  
"New York"
"Paris"
  
##################################################
"next statement also alters the flow of your for loop"
 "All city names except London gets printed to the console coz,the next statement skips the remainder of the code inside the for loop and proceeds to the next acturation."
  
cities <- list("New York", "Paris", "London", "Tokyo", "Rio de Janeiro", "Capetown")

for( city in cities) {
    if (nchar(city) == 6) {
      next
    }
  print(city)

################ OUTPUT #######################
  
"New York"
"Paris"
"Tokyo"
"Rio de Janeiro"
"Capetown"
###################################################################
  "Suppose we want to loop the cities names as well as it position inside the vector. Here's how we do it."
  
cities <- c("New York", "Paris", "London", "Tokyo", "Rio de Janeiro", "Capetown")
  
 
for( i in 1:lenth(cities)) {
    print(paste(cities[i], "is on position", i, "in the cities vector."))
      next
    }
  
################ OUTPUT #######################
 "New York is on position 1 in the cities vector"
"Paris is on position 2 in the cities vector."
"London is on positon 3 in the cities vector."
"Tokyo is on positon 4 in the cities vector."
"Rio de Janeiro is on position 5 in the cities vector."
"Capetown is on postion 6 in the cities vector." 
  
 ################  for loop: wrap up #####################
  cities <- c("New York", "Paris", "London", "Tokyo", "Rio de Janeiro", "Capetown")
  
#Concise, easy to read, but no access to looping index
for( city in cities) {
  print(city)
}
  
#Harder to read and write, but more versatile
for( i in 1:lenth(cities)) {
  print(paste(cities[i])         
} 
