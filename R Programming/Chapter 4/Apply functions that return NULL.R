split_low <- (("gauss" :"1777"), ("bayes" :"1702"), ("pascal" :"1623") ,( "pearson" :"1857" ))
lapply(split_low, function(x) {
  if (nchar(x[1]) > 5) {
    return(NULL)
  } else {
    return(x[2])
  }
})
#Output
#
list("1777", "1702", NULL, NULL)
