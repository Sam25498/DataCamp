library(gapminder)
library(dplyr)
library(ggplot2)

# Filter for observations in the Oceania continent in 1952
oceania_1952 <- gapminder %>% filter(year == 1952) %>% filter(continent == "Oceania")
oceania_1952

# Create a bar plot of gdpPercap by country
ggplot(oceania_1952, aes(x = country, y = gdpPercap)) + geom_col()


########################################################################
# oceania_1952 output
# A tibble: 2 × 6
  country     continent  year lifeExp     pop gdpPercap
  <fct>       <fct>     <int>   <dbl>   <int>     <dbl>
1 Australia   Oceania    1952    69.1 8691212    10040.
2 New Zealand Oceania    1952    69.4 1994794    10557.
