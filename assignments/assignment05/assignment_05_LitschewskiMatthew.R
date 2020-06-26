# Assignment: ASSIGNMENT 5
# Name: Litschewski, Matthew  
# Date: 2010-06-25




## Set the working directory to the root of your DSC 520 directory
getwd()
setwd("/Users/matthewlitschewski/Documents/GitHub/dsc520")
## Load the `data/r4ds/heights.csv` to
heights_df <- read.csv("data/r4ds/heights.csv")

## Using `cor()` compute correclation coefficients for
## height vs. earn
cor(heights_df$height, heights_df$earn, use ='everything')
### age vs. earn
cor(heights_df$age, heights_df$earn, use ='everything')
### ed vs. earn
cor(heights_df$ed, heights_df$earn, use ='everything')

## Spurious correlation
## The following is data on US spending on science, space, and technology in millions of today's dollars
## and Suicides by hanging strangulation and suffocation for the years 1999 to 2009
## Compute the correlation between these variables
tech_spending <- c(18079, 18594, 19753, 20734, 20831, 23029, 23597, 23584, 25525, 27731, 29449)
suicides <- c(5427, 5688, 6198, 6462, 6635, 7336, 7248, 7491, 8161, 8578, 9000)
cor(tech_spending, suicides, use = "everything")
