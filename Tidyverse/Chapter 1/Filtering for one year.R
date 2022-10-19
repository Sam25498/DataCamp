library(gapminder)
library(dplyr)

# Filter the gapminder dataset for the year 1957
gapminder %>% filter(year == 1957)
  
###################################################
# OUTPUT 

# A tibble: 142 × 6
   country     continent  year lifeExp      pop gdpPercap
   <fct>       <fct>     <int>   <dbl>    <int>     <dbl>
 1 Afghanistan Asia       1957    30.3  9240934      821.
 2 Albania     Europe     1957    59.3  1476505     1942.
 3 Algeria     Africa     1957    45.7 10270856     3014.
 4 Angola      Africa     1957    32.0  4561361     3828.
 5 Argentina   Americas   1957    64.4 19610538     6857.
 6 Australia   Oceania    1957    70.3  9712569    10950.
 7 Austria     Europe     1957    67.5  6965860     8843.
 8 Bahrain     Asia       1957    53.8   138655    11636.
 9 Bangladesh  Asia       1957    39.3 51365468      662.
10 Belgium     Europe     1957    69.2  8989111     9715.
# … with 132 more rows
