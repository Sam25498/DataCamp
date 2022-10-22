library(gapminder)
library(dplyr)

# Summarize to find the median life expectancy
gapminder %>%  summarize(medianLifeExp = median(lifeExp))

##############################################
###########  OUTPUT   ########################

# A tibble: 1 × 1
  medianLifeExp
          <dbl>
1          60.7
