# Assignment: ASSIGNMENT 3
# Name: Burden, Joshua
# Date: 2022-04-03


install.packages('ggplot2')
library(ggplot2)
theme_set(theme_minimal())

x <- read.csv(url("http://content.bellevue.edu/cst/dsc/520/id/resources/acs-14-1yr-s0201.csv"), header = TRUE)
x

#What are the elements in your data (including the categories and data types)?
typeof(x)

# Please provide the output from the following functions: str(); nrow(); ncol()
str(x)
nrow(x)
ncol(x)

#Create a Histogram of the HSDegree variable using the ggplot2 package.
head(x)
summary(x)

# qplot(x$HSDegree, geom = "histogram")

ggplot(data=x, aes(HSDegree)) + geom_histogram()

#Set a bin size for the Histogram.
ggplot(data=x, aes(HSDegree)) + geom_histogram(colour= 6, 
                                               fill = "black",
                                               bins = 50)

#Include a Title and appropriate X/Y axis labels on your Histogram Plot.
ggplot(data=x, aes(HSDegree)) + geom_histogram(colour= 6, 
                                               fill = "black",
                                               bins = 50) + 
  ggtitle("US Percentage with High School Diplomas") + xlab("percentage value for HS Degree") + ylab("Count of occurance for Percentage of HSDegree")

#Answer the following questions based on the Histogram produced:

#  Based on what you see in this histogram, is the data distribution unimodal?
# This is unimodel as the highest peak is around 90%

#  Is it approximately symmetrical?
# From what I can see, this is not as symmetrical as it could be as it looks more skewed to the left

#  Is it approximately bell-shaped?
# It is more or less a bell curved model shape, but it does have issues with the right of the curve as there are gaps of rise and dips that are not uniform
# It is more skewed left, but there is a gradual tapering and then a more aggressive decent on the right of the curve

#  Is it approximately normal?
#

#  If not normal, is the distribution skewed? If so, in which direction?
# it is skewed to the left
#  Include a normal curve to the Histogram that you plotted.

gg <- ggplot(data = x, aes(HSDegree))
gg <- gg + geom_histogram(binwidth=2, colour="black", 
                          aes(y=..density.., fill=..count..))
gg <- gg + scale_fill_gradient("Count", low="#DCDCDC", high="#7C7C7C")
gg <- gg + stat_function(fun=dnorm,
                         color="red",
                         args=list(mean=mean(x$HSDegree), 
                                   sd=sd(x$HSDegree)))

gg

# Explain whether a normal distribution can accurately be used as a model for this data.
# It can be used as a means to see what the ND model would look like compared to the model being generated

# Create a Probability Plot of the HSDegree variable.
ggplot(data = x, aes(sample = HSDegree)) + stat_qq()

#Answer the following questions based on the Probability Plot:

#  Based on what you see in this probability plot, is the distribution approximately normal? Explain how you know.
ggplot(data = x, aes(sample = HSDegree))  + stat_qq() 

# based on the outcome of the probability plot and the ND line being generated i would say that it is not normal and that it makes a C shape


# If not normal, is the distribution skewed? If so, in which direction? Explain how you know.
ggplot(data = x, aes(sample = HSDegree))  + stat_qq()  + stat_qq_line(color = "green")
#seems to be skewed both left and right, but data on the left is considerable more skewed

# Now that you have looked at this data visually for normality, you will now quantify normality with numbers using the stat.desc() function. Include a screen capture of the results produced.
install.packages ("pastecs")
library (pastecs)
stat.desc(x$HSDegree, basic = FALSE, norm = TRUE)
# In several sentences provide an explanation of the result produced for skew, kurtosis, and z-scores. In addition, explain how a change in the sample size may change your explanation?
# I was not able to understand this data accurately. I understand that skew and skewness is a statistical numerical method to measure the asymmetry of the distribution, which tells me the position of the majority of data values in the distribution around the mean value. 
# While Kurtosis is the numerical method in stats that measures the sharpness of the peak in a data distribution. 
# lastly the z-score is calculated using z = (value-mean) but I did not find or have been able to produce z score out of this exercise. I would like to know why. 