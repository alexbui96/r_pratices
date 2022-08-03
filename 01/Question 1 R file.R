# Question 1a
# Generate a vector named 'myvec'
myvec <- c(1.5, 2.1, 1.8, 3.4, 2.6, 2.8, 0.9,1.9)
# A vector contains 1st, 3rd, 6nd elements in myvec
myvec[c(1,3,6)]

# Question 1b
# Print the elements in myvec which is greater than 2 and less than 3
myvec[myvec>2 & myvec<3]

# Question 1c
# Mean of myvec
mean(myvec)
# Sum of myvec
sum(myvec)

# Question 1d
# The amount of elements in myvec
length(myvec)
# The amount of elements in myvec less than 2.5
length(myvec[myvec<2.5])
