library(gapminder)
library(dplyr)

# Filter for China in 2002
gapminder %>% filter(country == "China", year == 2002)

########################################################
# Output

# A tibble: 1 × 6
  country continent  year lifeExp        pop gdpPercap
  <fct>   <fct>     <int>   <dbl>      <int>     <dbl>
1 China   Asia       2002    72.0 1280400000     3119.
