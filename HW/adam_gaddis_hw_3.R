# Homework 3
# Answer the questions and save this file as yourname_hw3.
# Submit it on Canvas under Modules --> Homework --> Homework 3.
# The questions are based on the datafile hw2data.csv.
# It lists the town, salesprice, lotarea, and if the house has AC:
# with AC = Yes, without AC = No and AC status not known = unknown.
# Please note that all town names except unknown is written in captial letters 


#1 read the file hw2data.csv
# first make sure that hw2data.csv is in your working directory
data_ <- read.csv("hw3data.csv")

# write R commands to answer the following questions.

#2 Create a subset of houses sold where town is unknown
unknown_town <- data_[data_$town == "unknown",]
unknown_town
#3 What is the number of houses sold in Dubuque without AC
dubuque_no_ac <- subset(data_, data_$town == "DUBUQUE" & data_$AC == "No")
dubuque_no_ac
#4 What is the number of houses sold in Dubuque with AC and
# lotarea > 10000
dubuque_no_ac_lg_lotarea <- subset(data_, (data_$town == "DUBUQUE" & data_$AC == "Yes") & data_$lotarea > 10000)
dubuque_no_ac_lg_lotarea
#5 What is the average salesprice for the houses sold in Dubuque
mean_saleprice_dubuque <- mean(data_[data_$town == "DUBUQUE", 2])
mean_saleprice_dubuque
#6 What is the average salesprice for the houses sold in Dubuque
# with AC
mean_saleprice_dubuque_with_ac <- mean(data_[(data_$town == "DUBUQUE" & data_$AC == "Yes"), 2])
mean_saleprice_dubuque_with_ac
#7 What is the average salesprice for the houses sold in Dubuque
# with AC and lotarea > 10000
mean_saleprice_dubuque_with_ac_lg_lotarea <- mean(data_[(data_$town == "DUBUQUE" & data_$AC == "Yes" & data_$lotarea > 10000), 2])
mean_saleprice_dubuque_with_ac_lg_lotarea
#8 Create a subset of houses NOT sold in Dubuque and with salesprice > 400,000
not_in_dubuque <- subset(data_, data_$town != "DUBUQUE" & data_$salesprice > 400000)
not_in_dubuque
#9 Create a subset with houses sold in either Asbury or Dubuque
# but without
# Comment from adam - Looks like you forgot to finish the criteria above, I am going to assume its no a/c
asbury_or_dubuque <- not_in_dubuque <- subset(data_, data_$AC == "No" & (data_$town == "DUBUQUE" | data_$town == "ASBURY"))
asbury_or_dubuque
# 10 Use boxplot() command to create the boxplot of salesprice
# of houses sold in Dubuque
saleprice_from_dubuque <- data_[data_$town == "DUBUQUE", 2]
saleprice_from_dubuque <- data.frame(saleprice_from_dubuque)
boxplot(saleprice_from_dubuque, xlab="Dubuque", ylab="Sales Price")







