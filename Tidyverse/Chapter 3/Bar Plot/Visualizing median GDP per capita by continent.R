library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize the median gdpPercap by continent in 1952
by_continent <- gapminder%>% group_by(continent) %>% filter(year== 1952) %>% summarize(medianGdpPercap = median(gdpPercap))
by_continent
# Create a bar plot showing medianGdp by continent
ggplot(by_continent, aes(x = continent, y = medianGdpPercap)) + geom_col() 
