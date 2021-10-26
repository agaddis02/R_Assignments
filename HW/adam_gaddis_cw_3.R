balance_data <- read.csv("C:/Users/agadd/Documents/Adam/UNTD/Courses/Fall 2021/DSCI 3380/R Assignments/balance.csv")

female_breakdown <- subset(balance_data, balance_data$Age >= 30 & (balance_data$Income > 100000 | balance_data$Balance > 10000))
female_breakdown