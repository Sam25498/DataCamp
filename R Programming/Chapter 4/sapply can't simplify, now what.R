# temp is already prepared for you in the workspace

# Definition of below_zero()
below_zero <- function(x) {
  return(x[x < 0])
}

# Apply below_zero over temp using sapply(): freezing_s
freezing_s <- sapply(temp, below_zero)
freezing_s

# Apply below_zero over temp using lapply(): freezing_l
freezing_l <- lapply(temp, below_zero)
freezing_l

# Are freezing_s and freezing_l identical?
identical(freezing_s,freezing_l)

########################################################################################################
################################            OUTPUT             #########################################
########################################################################################################

# Apply below_zero over temp using sapply(): freezing_s
freezing_s <- sapply(temp, below_zero)
freezing_s
[[1]]
[1] -1

[[2]]
numeric(0)

[[3]]
[1] -1 -3

[[4]]
[1] -2

[[5]]
numeric(0)

[[6]]
[1] -3

[[7]]
numeric(0)
# Apply below_zero over temp using lapply(): freezing_l
freezing_l <- lapply(temp, below_zero)
freezing_l
[[1]]
[1] -1

[[2]]
numeric(0)

[[3]]
[1] -1 -3

[[4]]
[1] -2

[[5]]
numeric(0)

[[6]]
[1] -3

[[7]]
numeric(0)
# Are freezing_s and freezing_l identical?
identical(freezing_s,freezing_l)
[1] TRUE
