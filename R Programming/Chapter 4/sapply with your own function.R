# temp is already defined in the workspace

# Finish function definition of extremes_avg
extremes_avg <- function(x) {
  ( min(x) + max(x) ) / 2
}

# Apply extremes_avg() over temp using sapply()
extrm_avg_temp <- sapply(temp, extremes_avg)
extrm_avg_temp

# Apply extremes_avg() over temp using lapply()
avg_temp_extrm <- lapply(temp, extremes_avg)
avg_temp_extrm
