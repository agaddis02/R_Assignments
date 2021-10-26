name <- c("Emma", "Pat", "Peter", "Jennifer", "Joey")
height <- c(64, 70, 72, 65, 68)
weight <- c(130, 170, 165, 135, 150)
gender <- factor(c("FEMALE", "MALE", "MALE", "FEMALE", "MALE"))

# Question 1
biodata <- data.frame(name, height, weight, gender)
# Question 2
peter <- biodata[3,c(1,2,3)]
# Question 3 
female_names <- biodata[which(biodata$gender == "FEMALE"),1]
female_names <- data.frame("name"=female_names)

