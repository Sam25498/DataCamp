# Convert astro to vector of Date objects: astro_dates
astro_dates <- as.Date(astro, format = "%d-%b-%Y")
astro_dates


# Convert meteo to vector of Date objects: meteo_dates

meteo_dates <- as.Date(meteo, format = "%B %d, %y")
meteo_dates

# Calculate the maximum absolute difference between astro_dates and meteo_dates
max(abs(astro_dates-meteo_dates))


#####################################################################
###################   OUTPUT   ######################################
# Convert astro to vector of Date objects: astro_dates
astro_dates <- as.Date(astro, format = "%d-%b-%Y")
astro_dates
      spring       summer         fall       winter 
"2015-03-20" "2015-06-25" "2015-09-23" "2015-12-22" 
# Convert meteo to vector of Date objects: meteo_dates
meteo_dates <- as.Date(meteo, format = "%B %d, %y")
meteo_dates
      spring       summer         fall       winter 
"2015-03-01" "2015-06-01" "2015-09-01" "2015-12-01" 
# Calculate the maximum absolute difference between astro_dates and meteo_dates
max(abs(astro_dates-meteo_dates))
Time difference of 24 days
