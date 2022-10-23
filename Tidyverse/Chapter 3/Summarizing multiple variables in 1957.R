library(gapminder)
library(dplyr)

# Filter for 1957 then summarize the median life expectancy and the maximum GDP per capita
gapminder %>% filter( year == 1957) %>% summarize(medianLifeExp = median(lifeExp), maxGdpPercap= max(gdpPercap))

############################################################################

# A tibble: 1 × 2
  medianLifeExp maxGdpPercap
          <dbl>        <dbl>
1          48.4      113523.
