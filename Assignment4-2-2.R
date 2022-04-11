#We interact with a few datasets in this course, one you are already familiar with, the 2014 American Community Survey and the second is a Housing dataset, t
#hat provides real estate transactions recorded from 1964 to 2016.  For this exercise, you need to start practicing some data transformation steps – which will carry into next week, 
#as you learn some additional methods.  For this week, using either dataset (or one of your own – although I will let you know ahead of time that the Housing dataset is used for a later assignment, 
#so not a bad idea for you to get more comfortable with now!), perform the following data transformations:

install.packages("readxl")
library("readxl")
install.packages("httr")
library(httr)
url1 <- "http://content.bellevue.edu/cst/dsc/520/id/resources/10-week-housing-data/week-6-housing.xlsx"
GET(url1,write_disk(tf <- tempfile(fileext = ".xlsx")))
df <- read_excel(tf)
df
str(df)
#Use the apply function on a variable in your dataset
my.matrx <- matrix(df(1:10, 11:20, 21:30), nrow = 10, ncol = 3)
my.matrx

#Use the aggregate function on a variable in your dataset
group_mean <- aggregate(df$`Sale Date` ~ df$`Sale Price`, data = df, mean) # Equivalent
group_mean

#Use the plyr function on a variable in your dataset – more specifically, I want to see you split some data, perform a modification to the data, and then bring it back together
install.packages("plyr")
library(plyr)
#Check distributions of the data

mean_of_size_by_year_built <- ddply(df, ~ year_built, summarize, size = mean(square_feet_total_living))

mean_of_size_by_year_built

#Identify if there are any outliers
install.packages("ggplot2")
library(ggplot2)

DATA <- as.data.frame(mean_of_size_by_year_built)
ggplot(data=DATA, aes(size)) + geom_histogram(colour= 6, 
                                               fill = "black",
                                               xlab = "square feet of house",
                                               main = "Count of houses based on square feet",
                                               bins = 20)  + ggtitle("Home Size by SQ/FT ") + xlab("Square Feet") + ylab("Count")

#outliers occur after 3200 sq ft as most occur above 500sq/ft and under 3500-3700 sq/ft

#Create at least 2 new variables
DATA1 <- DATA$year_built
DATA1
str(DATA1)
DATA2 <- DATA$size
str(DATA2)
  