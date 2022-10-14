# temp is already available in the workspace
temp
# Definition of basics()
basics <- function(x) {
  c(min = min(x), mean = mean(x), max = max(x))
}

# Apply basics() over temp using vapply()
t <- vapply(temp, basics, numeric(3))
t
