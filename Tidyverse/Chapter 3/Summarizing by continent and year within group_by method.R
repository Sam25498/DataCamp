library(gapminder)
library(dplyr)

# Find median life expectancy and maximum GDP per capita in each continent/year combination
gapminder %>% group_by(year,continent) %>% summarize(medianLifeExp =  median(lifeExp), maxGdpPercap = max(gdpPercap))


####################################################################3
# A tibble: 60 × 4
# Groups:   year [12]
    year continent medianLifeExp maxGdpPercap
   <int> <fct>             <dbl>        <dbl>
 1  1952 Africa             38.8        4725.
 2  1952 Americas           54.7       13990.
 3  1952 Asia               44.9      108382.
 4  1952 Europe             65.9       14734.
 5  1952 Oceania            69.3       10557.
 6  1957 Africa             40.6        5487.
 7  1957 Americas           56.1       14847.
 8  1957 Asia               48.3      113523.
 9  1957 Europe             67.6       17909.
10  1957 Oceania            70.3       12247.
# … with 50 more rows
