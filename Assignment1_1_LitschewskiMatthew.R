"""
Course: DSC 520
Name: Litschewski, Matthew 
Date 2020-6-6
This R-script is to take the data set scroes.csv and manipulate to obtain 
information need to answer this weeks questions.
"""
library(readxl)
scores_df <- read.csv(file = "/Users/matthewlitschewski/Documents/GitHub/dsc520/data/scores.csv")

#1 The observational units are Count amd Score 

#2 The count and score quantitative and the Section is categorical 

regular_df <- scores_df[scores_df$Section == 'Regular', 1:3]
sports_df <- scores_df[scores_df$Section == "Sports", 1:3]
summary(regular_df)
summary(sports_df)
# Use plot function to plot each sections scores
plot(regular_df[1:2], ylab=c("Scores"), xlab=c("Count"), col = "red", bg="blue")
plot(sports_df[1:2],ylab=c("Scores"), xlab=c("Count"), col = "green", bg="blue")
#did one score more than the other 
# It would appear that "Regular" had an overal higher performance.  When looking at the data it appears that "Regular"
# has more people scoring above 300 than "Sports" does. 
#Tendencey ::
# Not every student in one section scored more than every student in the opposite.  However when looking at 
#mean, mode, median it is easy to see what the tendency of the data is per section.
# What other variable could have been used
# Although not something easy to track but time spent either in class or time spent studying could have a possible 
#change on the outlook. 

