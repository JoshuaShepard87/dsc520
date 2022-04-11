x <- read.csv(url('http://content.bellevue.edu/cst/dsc/520/id/resources/scores.csv'))
x

#1. What are the observational units in this study?
# The observational units in this study are to compare student performance in the two sections using course grades and total points earned in the course.  

#2. Identify the variables mentioned in the narrative paragraph and determine which are categorical and quantitative?
#categorical variable is section: Sport or regular
#quantitative variable is a score, total points earned in the course

#3. Create one variable to hold a subset of your data set that contains only the Regular Section and one variable for the Sports Section.
SP <- subset(x,Section=="Sports")
head(SP)

#Count Score Section
#1    10   200 Sports
#2    10   205 Sports
#3    20   235 Sports
#4    10   240 Sports
#5    10   250 Sports
#8    30   285 Sports

RE <- subset(x, Section=="Regular")
head(RE)

#Count Score Section
#6     10   265 Regular
#7     10   275 Regular
#9     10   295 Regular
#10    10   300 Regular
#13    10   305 Regular
#14    10   310 Regular

#4. Use the Plot function to plot each Sections scores and the number of students achieving that score. Use additional Plot Arguments to label the graph and give each axis an appropriate label. Once you have produced your Plots answer the following questions:
Score1=SP[,2] 
Score2=RE[,2]
par(mfrow=c(2,1))
plot(Score1, xlab="number of students", ylab="Score", main="Sports")
plot(Score2, xlab="number of students", ylab="Score", main="Regular")
 
#a. Comparing and contrasting the point distributions between the two section, looking at both tendency and consistency: Can you say that one section tended to score more points than the other? Justify and explain your answer.

#b. Did every student in one section score more points than every student in the other section? If not, explain what a statistical tendency means in this context.

#c. What could be one additional variable that was not mentioned in the narrative that could be influencing the point distributions between the two sections?
  
  