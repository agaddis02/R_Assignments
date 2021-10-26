# Exam I
# Answer the questions and save this file as Yourname_ExamI.R
# Submit it on Canvas before 6:50 PM
# under Modules --> Exams --> Exam I.

# Question 1 -- 5 points
# Write R code to create the data frame given in the pdf file
# 'exam 1 question 1' (Modules -- > Exams)
# with given data types
position_ <- c("1","2","3","4","5","6")
country <- c("China", "India", "United States", "Indonesia", "Pakistan", "Brazil")
continent <- factor(c("Asia", "Asia", "North America", "Asia", "Asia", "South America"))
population_in_million <- c(1439,1380,331,273,221,212)

df <- data.frame(position_, country, continent, population_in_million)


# The following questions 2 to 11 are based on the datafile iris.csv.
# It lists the sepal.length, sepal.width, petal.length,
# petal.width, and species of 3 varieties of iris flower

# WRITE R COMMANDS TO ANSWER THE FOLLOWING QUESTIONS.
# 1 points for each question

# Question 2
# read the file iris.csv
# first make sure that hw2data.csv is in your working directory
myData <- read.csv("iris.csv")


# Question 3
# List the number of rows, columns, 
# and data types of each variables
nrow(myData)
ncol(myData)
str(myData)




# Question 4
# Create boxplot for sepal.length for each species
# with proper title and axis labels
# Hint: use the ~ function
boxplot(myData$sepal.length ~ myData$species, xlab = "Species", ylab = "Sepal Length")


# Question 5 
# Create a scatterplot with petal.length on the X axis
# and petal.width on the y axis with proper title and
# axis labels
plot(myData$petal.width ~ myData$petal.length, main="Petal Len v Petal Wid",
     xlab = "Petal Length", ylab = "Petal Width")


# Question 6
# Find the mean petal.length of the species Setosa
mean(myData[myData$species == "Setosa",3])

# Question 7
# Create a subset where petal.length > 1.5 and Species is Setosa
petal_len_greater_con <- myData[myData$species == "Setosa" & myData$petal.length > 1.5,]

# Question 8
# How many Setosa species are there where petal.length > 1.5
nrow(petal_len_greater_con)

# Question 9
# Count the number of flowers where petal.length > 1.5 and the species
# are either Versicolor or Virginica
versicolor_or_virginica <- myData[(myData$species == "Versicolor" | myData$species == "Virginica") & myData$petal.length > 1.5,]

# Question 10
# What is the average petal.length of species Versicolor
# where sepal.length > 5 and sepal.width = 3
mean(myData[(myData$sepal.length > 5 & myData$sepal.width == 3) & myData$species == "Versicolor",3])

# Question 11
# Create boxplot for the petal.length of flowers where
# sepal.width < 3 or petal.width > 1

petal_len <- myData[(myData$sepal.length >1 | myData$sepal.width < 3),]
boxplot(petal_len$petal.length)










