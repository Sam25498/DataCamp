# Consult the documentation on the mean() function
?mean

# Inspect the arguments of the mean() function
args(mean)

###############################   OUTPUT   ###################################
mean: Arithmetic Mean
Description
Generic function for the (trimmed) arithmetic mean.

Usage
mean(x, …)
# S3 method for default
mean(x, trim = 0, na.rm = FALSE, …)

Arguments
x
An R object. Currently there are methods for numeric/logical vectors and date, date-time and time interval objects. Complex vectors are allowed for trim = 0, only.

trim
the fraction (0 to 0.5) of observations to be trimmed from each end of x before the mean is computed. Values of trim outside that range are taken as the nearest endpoint.

na.rm
a logical value indicating whether NA values should be stripped before the computation proceeds.

…
further arguments passed to or from other methods.

Value
If trim is zero (the default), the arithmetic mean of the values in x is computed, as a numeric or complex vector of length one. If x is not logical (coerced to numeric), numeric (including integer) or complex, NA_real_ is returned, with a warning.

If trim is non-zero, a symmetrically trimmed mean is computed with a fraction of trim observations deleted from each end before the mean is computed.

References
Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) The New S Language. Wadsworth & Brooks/Cole.

See Also
weighted.mean, mean.POSIXct, colMeans for row and column means.

Examples
Run this code
# NOT RUN {
x <- c(0:10, 50)
xm <- mean(x)
c(xm, mean(x, trim = 0.10))
# }
