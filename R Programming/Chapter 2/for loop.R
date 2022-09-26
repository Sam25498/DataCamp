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
  
cities <- list("New York", "Paris", "London", "Tokyo", "Rio de Janeiro", "Capetown")

for( city in cities) {
    if (nchar(city) == 6) {
      break
    }
  print(city)

