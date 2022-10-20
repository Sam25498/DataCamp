library(gapminder)
library(dplyr)
# Filter, mutate, and arrange the gapminder dataset
gapminder %>%
filter(year == 2007) %>%
mutate(lifeExpMonths = 12 * lifeExp) %>%
arrange(desc(lifeExpMonths))

# A tibble: 142 × 7
   country          continent  year lifeExp       pop gdpPercap lifeExpMonths
   <fct>            <fct>     <int>   <dbl>     <int>     <dbl>         <dbl>
 1 Japan            Asia       2007    82.6 127467972    31656.          991.
 2 Hong Kong, China Asia       2007    82.2   6980412    39725.          986.
 3 Iceland          Europe     2007    81.8    301931    36181.          981.
 4 Switzerland      Europe     2007    81.7   7554661    37506.          980.
 5 Australia        Oceania    2007    81.2  20434176    34435.          975.
 6 Spain            Europe     2007    80.9  40448191    28821.          971.
 7 Sweden           Europe     2007    80.9   9031088    33860.          971.
 8 Israel           Asia       2007    80.7   6426679    25523.          969.
 9 France           Europe     2007    80.7  61083916    30470.          968.
10 Canada           Americas   2007    80.7  33390141    36319.          968.
# … with 132 more rows
