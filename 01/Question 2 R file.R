# Question 2

# load data set as dataframe 
data_q2 <- read.table('~/OneDrive - Stony Brook University/SBU/MAT + AMS/Fall 2021/AMS 380/hw/01/HW1Q2.csv',header = T, sep = ',')

#Select the rows of data_q2 s.t. (a > 0.05 & b < 0.1)
subset(data_q2, a > 0.05 & b< 0.1)

#Select the rows of data_q2 s.t. (a > 0.05 or b < 0.1)
subset(data_q2, a > 0.05 | b< 0.1)

# Generate the now col 'c' in data_q2 s.t. c = b^2
transform(data_q2, c = b^2)
