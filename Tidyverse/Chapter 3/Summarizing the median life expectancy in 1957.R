library(gapminder)
library(dplyr)

# Filter for 1957 then summarize the median life expectancy



gapminder %>% filter(year == 1957) %>% summarize(medianLifeExp = median(lifeExp))

#########################################################################
######### OUTPUT #########################################
# A tibble: 1 × 1
  medianLifeExp
          <dbl>
1          48.4
