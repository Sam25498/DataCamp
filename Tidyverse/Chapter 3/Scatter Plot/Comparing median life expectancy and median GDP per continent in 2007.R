library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize the median GDP and median life expectancy per continent in 2007
by_continent_2007 <- gapminder %>% filter(year == 2007) %>% group_by(continent) %>% summarize(medianLifeExp = median(lifeExp), medianGdpPercap = median(gdpPercap))

by_continent_2007

# A tibble: 5 × 3
  continent medianLifeExp medianGdpPercap
  <fct>             <dbl>           <dbl>
1 Africa             52.9           1452.
2 Americas           72.9           8948.
3 Asia               72.4           4471.
4 Europe             78.6          28054.
5 Oceania            80.7          29810.
# Use a scatter plot to compare the median GDP and median life expectancy

ggplot(by_continent_2007, aes(x = medianGdpPercap , y = medianLifeExp , color = continent)) + geom_point() + expand_limits(y = 0)
