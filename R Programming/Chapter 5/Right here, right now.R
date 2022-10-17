# Get the current date: today
today <- Sys.Date()
today


# See what today looks like under the hood
unclass(today)


# Get the current time: now
now <- Sys.time()
now


# See what now looks like under the hood
unclass(now)


#OUTPUT
# Get the current date: today
today <- Sys.Date()
today
[1] "2022-10-17"
# See what today looks like under the hood
unclass(today)
[1] 19282
# Get the current time: now
now <- Sys.time()
now
[1] "2022-10-17 20:26:19 UTC"

