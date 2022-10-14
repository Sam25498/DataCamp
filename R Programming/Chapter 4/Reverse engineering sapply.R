
sapply(list(runif (10), runif (10)), 
       function(x) c(min = min(x), mean = mean(x), max = max(x)))
  #OUTPUT     
                 [,1]         [,2]
min  0.1137891 0.0008211893
mean 0.7075331 0.5088828115
max  0.9404418 0.9515799196

