library(gapminder)
library(dplyr)
library(ggplot2)

# Filter for observations in the Oceania continent in 1952
oceania_1952 <- gapminder %>% filter(year == 1952) %>% filter(continent == "Oceania")
oceania_1952

# Create a bar plot of gdpPercap by country
ggplot(oceania_1952, aes(x = country, y = gdpPercap)) + geom_col()
