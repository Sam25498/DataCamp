# login and logout are already defined in the workspace
# Calculate the difference between login and logout: time_online
time_online <- logout - login

# Inspect the variable time_online
time_online

# Calculate the total time online
sum(time_online)

# Calculate the average time online
avg_time_online <- mean(time_online )
avg_time_online


############################################################################
#####################   OUTPUT    ##########################################
# Inspect the variable time_online
time_online
Time differences in secs
[1] 2305.11818   34.18472  837.18182 2397.90153 1851.30411
# Calculate the total time online
sum(time_online)
Time difference of 7425.69 secs
# Calculate the average time online
avg_time_online <- mean(time_online )
avg_time_online
Time difference of 1485.138 secs
