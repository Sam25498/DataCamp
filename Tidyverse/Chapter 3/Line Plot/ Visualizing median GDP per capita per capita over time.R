library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize the median gdpPercap by year, then save it as by_year
by_year <- gapminder %>%  group_by(year) %>% summarize(medianGdpPercap = median(gdpPercap))

by_year
#################           OUTPUT             ######################
# A tibble: 12 × 2
    year medianGdpPercap
   <int>           <dbl>
 1  1952           1969.
 2  1957           2173.
 3  1962           2335.
 4  1967           2678.
 5  1972           3339.
 6  1977           3799.
 7  1982           4216.
 8  1987           4280.
 9  1992           4386.
10  1997           4782.
11  2002           5320.
12  2007           6124.
###############################################################
# Create a line plot showing the change in medianGdpPercap over time
ggplot(by_year, aes(x = year , y = medianGdpPercap )) + geom_line() + expand_limits(y = 0)
