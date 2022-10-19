library(gapminder)
library(dplyr)

# Filter for the year 1957, then arrange in descending order of population
gapminder %>% filter(year == 1957) %>% 
arrange(desc(pop))
 
 ##################################################################
 
 # A tibble: 142 × 6
   country        continent  year lifeExp       pop gdpPercap
   <fct>          <fct>     <int>   <dbl>     <int>     <dbl>
 1 China          Asia       1957    50.5 637408000      576.
 2 India          Asia       1957    40.2 409000000      590.
 3 United States  Americas   1957    69.5 171984000    14847.
 4 Japan          Asia       1957    65.5  91563009     4318.
 5 Indonesia      Asia       1957    39.9  90124000      859.
 6 Germany        Europe     1957    69.1  71019069    10188.
 7 Brazil         Americas   1957    53.3  65551171     2487.
 8 United Kingdom Europe     1957    70.4  51430000    11283.
 9 Bangladesh     Asia       1957    39.3  51365468      662.
10 Italy          Europe     1957    67.8  49182000     6249.
# … with 132 more rows
