# Classwork 2 - Answer the questions and save this file as
# yourname_cw2 and submit it on Canvas under week 7 --> classwork2

# read the balance.csv file on R from week 7 and
# Write commands to answer the following questions:

balance <- read.csv("C:/Users/agadd/Documents/Adam/UNTD/Courses/Fall 2021/DSCI 3380/R Assignments/balance.csv", header = TRUE)

# 1 find the number of males and females
males <- balance[which(balance$Sex == "Male"),]
females <- balance[which(balance$Sex == "Female"),]
num_males <- nrow(males)
num_females <- nrow(females)
num_males
num_females

# 2 Draw box plot of Balance for both Male and Female observations
male_balance <- males$Balance
female_balance <- females$Balance

boxplot(male_balance, female_balance,
        main = "Balance for male and female",
        names = c("Male", "Female"),
        xlab = "gender",
        ylab = "balance")
# 3 Use tapply function to find the median age for both male and female observations
balance_ <- balance$Balance
sex_ <- balance$Sex
type <- factor(balance$Sex,
               labels = c("Male", "Female"))
median_balance <- tapply(balance_, sex_, median)
median_balance
