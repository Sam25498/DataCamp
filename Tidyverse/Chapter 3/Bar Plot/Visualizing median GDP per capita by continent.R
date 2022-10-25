library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize the median gdpPercap by continent in 1952
by_continent <- gapminder%>% group_by(continent) %>% filter(year== 1952) %>% summarize(medianGdpPercap = median(gdpPercap))
by_continent
# Create a bar plot showing medianGdp by continent
ggplot(by_continent, aes(x = continent, y = medianGdpPercap)) + geom_col() 

##########################################################################################
#by_continent output
# A tibble: 5 × 2
  continent medianGdpPercap
  <fct>               <dbl>
1 Africa               987.
2 Americas            3048.
3 Asia                1207.
4 Europe              5142.
5 Oceania            10298.
