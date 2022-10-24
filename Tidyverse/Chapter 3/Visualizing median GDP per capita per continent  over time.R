library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize medianGdpPercap within each continent within each year: by_year_continent
by_year_continent <- gapminder %>% group_by(continent, year) %>% summarize(medianGdpPercap = median(gdpPercap))
by_year_continent
# Plot the change in medianGdpPercap in each continent over time
ggplot(by_year_continent, aes(x = year , y= medianGdpPercap, color = continent)) + geom_point() + expand_limits(y=0)

############################################################
##### OUTPUT OF BY YEAR CONTINENT 
by_year_continent
# A tibble: 60 × 3
# Groups:   continent [5]
   continent  year medianGdpPercap
   <fct>     <int>           <dbl>
 1 Africa     1952            987.
 2 Africa     1957           1024.
 3 Africa     1962           1134.
 4 Africa     1967           1210.
 5 Africa     1972           1443.
 6 Africa     1977           1400.
 7 Africa     1982           1324.
 8 Africa     1987           1220.
 9 Africa     1992           1162.
10 Africa     1997           1180.
# … with 50 more rows
