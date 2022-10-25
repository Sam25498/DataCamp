library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize the median gdpPercap by year & continent, save as by_year_continent
by_year_continent <- gapminder%>% group_by(year, continent) %>% summarize(medianGdpPercap = median(gdpPercap))
by_year_continent
# Create a line plot showing the change in medianGdpPercap by continent over time
ggplot(by_year_continent, aes(x = year, y = medianGdpPercap , color = continent)) + geom_line() + expand_limits(y = 0)

########################################################################################################################
# A tibble: 60 × 3
# Groups:   year [12]
    year continent medianGdpPercap
   <int> <fct>               <dbl>
 1  1952 Africa               987.
 2  1952 Americas            3048.
 3  1952 Asia                1207.
 4  1952 Europe              5142.
 5  1952 Oceania            10298.
 6  1957 Africa              1024.
 7  1957 Americas            3781.
 8  1957 Asia                1548.
 9  1957 Europe              6067.
10  1957 Oceania            11599.
# … with 50 more rows
