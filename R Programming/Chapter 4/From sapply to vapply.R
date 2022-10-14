# temp is already defined in the workspace

# Convert to vapply() expression
vapply(temp, max, numeric(1))

# Convert to vapply() expression
vapply(temp, function(x, y) { mean(x) > y }, y = 5, logical(1))

##################################################
# OUTPUT
 # Convert to vapply() expression
vapply(temp, max, numeric(1))
[1]  9 13  8  7  9  9  9
# Convert to vapply() expression
vapply(temp, function(x, y) { mean(x) > y }, y = 5, logical(1))
[1] FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE
