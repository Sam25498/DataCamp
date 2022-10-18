# Convert astro to vector of Date objects: astro_dates
astro_dates <- as.Date(astro, format = "%d-%b-%Y")
astro_dates


# Convert meteo to vector of Date objects: meteo_dates

meteo_dates <- as.Date(meteo, format = "%B %d, %y")
meteo_dates

# Calculate the maximum absolute difference between astro_dates and meteo_dates
max(abs(astro_dates-meteo_dates))
