# Homework 2 - Answer the questions and save this file as
# yourname_hw2. Submit it on Canvas under Homework --> Homework 2.


#1 read the file airlinedelays.csv from Week 7
airline_delays <- read.csv("C:/Users/agadd/Documents/Adam/UNTD/Courses/Fall 2021/DSCI 3380/R Assignments/airlinedelays.csv", header = TRUE)

# Import libraries
library(plyr)

#2 how many flights are there for each airline
flight_by_airline <- count(airline_delays, "Airline")
flight_by_airline

#3 What is the average arrival delay
avg_arrival_delay <- mean(airline_delays$Arrival.Delay)
avg_arrival_delay

#4 How many rows and columns are there? What is the data type of each variables?
num_of_cols <- ncol(airline_delays)
num_of_rows <- nrow(airline_delays)
num_of_rows
num_of_cols
str(airline_delays)

#5 Create a scatter plot of Elapsed Time (on y axis) Vs Distance
# give appropriate title and labels for x and y axis
elapsed_time = airline_delays$Elapsed.Time
distance = airline_delays$Distance
plot(distance, elapsed_time, main = "Scatter Plot Time vs Distance",
     xlab = "Distance", ylab = "Elapsed Time")

#6 create a boxplot of Arrival Delay for the airline [hint: use ~ function]
# give appropriate title and labels for x and y axis
arrival_delay = airline_delays$Arrival.Delay
airline = airline_delays$Airline
boxplot(arrival_delay ~ airline)

#7 create histogram for arrival delay
# give appropriate title and labels for x and y axis
hist(arrival_delay)

#8 use sapply funtion to find the mean of numerical variables
day_of_month <- airline_delays$Day.of.Month
day_of_week <- airline_delays$Day.of.Week
elapsed_time <- airline_delays$Elapsed.Time
arrival_delay <- airline_delays$Arrival.Delay
distance <- airline_delays$Distance
mean_day_of_month <- tapply(day_of_month, airline, mean)
mean_day_of_week <- tapply(day_of_week, airline, mean)
mean_elapsed_time <- tapply(elapsed_time, airline, mean)
mean_arrival_delay <- tapply(arrival_delay, airline, mean)
mean_distance <- tapply(distance, airline, mean)
mean_day_of_month
mean_day_of_week
mean_elapsed_time
mean_arrival_delay
mean_distance

#9 use tapply function to find the mean arrival delay for each airline
mean_arrival_delay

#10 use tapply funtion to find mean arrival delay for all flights where
# distance > 1000
mean_arrival_delay_dist1000 <- tapply(trimws(arrival_delay)>=1000, airline, mean)
mean_arrival_delay_dist1000






