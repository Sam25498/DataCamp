library(gapminder)
library(dplyr)

# Sort in ascending order of lifeExp
gapminder %>% arrange(lifeExp)


  
# Sort in descending order of lifeExp
gapminder %>% 
arrange(desc(lifeExp))


#######################################################################

 Sort in ascending order of lifeExp
gapminder %>% arrange(lifeExp)
# A tibble: 1,704 × 6
   country      continent  year lifeExp     pop gdpPercap
   <fct>        <fct>     <int>   <dbl>   <int>     <dbl>
 1 Rwanda       Africa     1992    23.6 7290203      737.
 2 Afghanistan  Asia       1952    28.8 8425333      779.
 3 Gambia       Africa     1952    30    284320      485.
 4 Angola       Africa     1952    30.0 4232095     3521.
 5 Sierra Leone Africa     1952    30.3 2143249      880.
 6 Afghanistan  Asia       1957    30.3 9240934      821.
 7 Cambodia     Asia       1977    31.2 6978607      525.
 8 Mozambique   Africa     1952    31.3 6446316      469.
 9 Sierra Leone Africa     1957    31.6 2295678     1004.
10 Burkina Faso Africa     1952    32.0 4469979      543.
# … with 1,694 more rows
  
# Sort in descending order of lifeExp
gapminder %>% 
arrange(desc(lifeExp))
# A tibble: 1,704 × 6
   country          continent  year lifeExp       pop gdpPercap
   <fct>            <fct>     <int>   <dbl>     <int>     <dbl>
 1 Japan            Asia       2007    82.6 127467972    31656.
 2 Hong Kong, China Asia       2007    82.2   6980412    39725.
 3 Japan            Asia       2002    82   127065841    28605.
 4 Iceland          Europe     2007    81.8    301931    36181.
 5 Switzerland      Europe     2007    81.7   7554661    37506.
 6 Hong Kong, China Asia       2002    81.5   6762476    30209.
 7 Australia        Oceania    2007    81.2  20434176    34435.
 8 Spain            Europe     2007    80.9  40448191    28821.
 9 Sweden           Europe     2007    80.9   9031088    33860.
10 Israel           Asia       2007    80.7   6426679    25523.
# … with 1,694 more rows
