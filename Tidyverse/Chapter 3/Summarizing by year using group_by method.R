library(gapminder)
library(dplyr)

# Find median life expectancy and maximum GDP per capita in each year
gapminder %>% group_by(year) %>% summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))

#####################################################################
# A tibble: 12 × 3
    year medianLifeExp maxGdpPercap
   <int>         <dbl>        <dbl>
 1  1952          45.1      108382.
 2  1957          48.4      113523.
 3  1962          50.9       95458.
 4  1967          53.8       80895.
 5  1972          56.5      109348.
 6  1977          59.7       59265.
 7  1982          62.4       33693.
 8  1987          65.8       31541.
 9  1992          67.7       34933.
10  1997          69.4       41283.
11  2002          70.8       44684.
12  2007          71.9       49357.
