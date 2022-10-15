# The linkedin and facebook lists have already been created for you
linkedin <- list(16, 9, 13, 5, 2, 17, 14)
facebook <- list(17, 7, 5, 16, 8, 13, 14)

# Convert linkedin and facebook to a vector: li_vec and fb_vec
li_vec <- unlist(linkedin)
fb_vec <- unlist(facebook)

# Append fb_vec to li_vec: social_vec
social_vec <- append(li_vec, fb_vec)
social_vec

# Sort social_vec
sort(social_vec, decreasing = TRUE)

#OUTPUT
# Append fb_vec to li_vec: social_vec
social_vec <- append(li_vec, fb_vec)
social_vec
 [1] 16  9 13  5  2 17 14 17  7  5 16  8 13 14
# Sort social_vec
sort(social_vec, decreasing = TRUE)
 [1] 17 17 16 16 14 14 13 13  9  8  7  5  5  2
