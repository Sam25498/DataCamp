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
