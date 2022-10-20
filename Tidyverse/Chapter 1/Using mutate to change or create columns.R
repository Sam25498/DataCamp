library(gapminder)
library(dplyr)

# Use mutate to change lifeExp to be in months
gapminder %>%
mutate(lifeExp = lifeExp * 12)
gapminder



# Use mutate to create a new column called lifeExpMonths
gapminder %>%
mutate(lifeExpMonths = lifeExp * 12)
