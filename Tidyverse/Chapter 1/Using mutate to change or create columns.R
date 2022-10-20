library(gapminder)
library(dplyr)

# Use mutate to change lifeExp to be in months
gapminder %>%
mutate(lifeExp = lifeExp * 12)
gapminder



# Use mutate to create a new column called lifeExpMonths
gapminder %>%
mutate(lifeExpMonths = lifeExp * 12)


########################################################
gapminder
# A tibble: 1,704 × 6
   country     continent  year lifeExp      pop gdpPercap
   <fct>       <fct>     <int>   <dbl>    <int>     <dbl>
 1 Afghanistan Asia       1952    28.8  8425333      779.
 2 Afghanistan Asia       1957    30.3  9240934      821.
 3 Afghanistan Asia       1962    32.0 10267083      853.
 4 Afghanistan Asia       1967    34.0 11537966      836.
 5 Afghanistan Asia       1972    36.1 13079460      740.
 6 Afghanistan Asia       1977    38.4 14880372      786.
 7 Afghanistan Asia       1982    39.9 12881816      978.
 8 Afghanistan Asia       1987    40.8 13867957      852.
 9 Afghanistan Asia       1992    41.7 16317921      649.
10 Afghanistan Asia       1997    41.8 22227415      635.
# … with 1,694 more rows
# Use mutate to create a new column called lifeExpMonths
gapminder %>%
mutate(lifeExpMonths = lifeExp * 12)
# A tibble: 1,704 × 7
   country     continent  year lifeExp      pop gdpPercap lifeExpMonths
   <fct>       <fct>     <int>   <dbl>    <int>     <dbl>         <dbl>
 1 Afghanistan Asia       1952    28.8  8425333      779.          346.
 2 Afghanistan Asia       1957    30.3  9240934      821.          364.
 3 Afghanistan Asia       1962    32.0 10267083      853.          384.
 4 Afghanistan Asia       1967    34.0 11537966      836.          408.
 5 Afghanistan Asia       1972    36.1 13079460      740.          433.
 6 Afghanistan Asia       1977    38.4 14880372      786.          461.
 7 Afghanistan Asia       1982    39.9 12881816      978.          478.
 8 Afghanistan Asia       1987    40.8 13867957      852.          490.
 9 Afghanistan Asia       1992    41.7 16317921      649.          500.
10 Afghanistan Asia       1997    41.8 22227415      635.          501.
# … with 1,694 more rows
