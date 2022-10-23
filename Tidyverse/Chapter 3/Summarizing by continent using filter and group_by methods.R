library(gapminder)
library(dplyr)

# Find median life expectancy and maximum GDP per capita in each continent in 1957
gapminder %>% filter(year == 1957) %>% group_by(continent) %>% summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))

#############################################################

# A tibble: 5 × 3
  continent medianLifeExp maxGdpPercap
  <fct>             <dbl>        <dbl>
1 Africa             40.6        5487.
2 Americas           56.1       14847.
3 Asia               48.3      113523.
4 Europe             67.6       17909.
5 Oceania            70.3       12247.
