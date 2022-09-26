ctr <- 1
while(ctr <= 7) {
  if (ctr %% 5 == 0) {
    break
  }
  print(paste("ctr is set to", ctr))
  ctr <- ctr + 1
}
#Output
"ctr is set to 1"
"ctr is set to 2"
"ctr is set to 3"
"ctr is set to 4"
