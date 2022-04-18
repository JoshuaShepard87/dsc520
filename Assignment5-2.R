# Assignment: ASSIGNMENT 5.2
# Name: Burden, Joshua
# Date: 2022-04-17


# Using either the same dataset(s) you used in the previous weeks’ exercise or a brand-new dataset of your choosing, 
# perform the following transformations 
# (Remember, anything you learn about the Housing dataset in these two weeks can be used for a later exercise!)
install.packages("dplyr")
library("dplyr") 
install.packages("readxl")
library("readxl")
install.packages("httr")
library(httr)
url1 <- "http://content.bellevue.edu/cst/dsc/520/id/resources/10-week-housing-data/week-6-housing.xlsx"
GET(url1,write_disk(tf <- tempfile(fileext = ".xlsx")))
df <- read_excel(tf)
df
str(df)
#Using the dplyr package, use the 6 different operations to analyze/transform the data 
#-GroupBy, Summarize, Mutate, Filter, Select, and Arrange – 
#Remember this isn’t just modifying data, you are learning about your data also 
#– so play around and start to understand your dataset in more detail

df %>% 
  select('Sale Date', 'Sale Price', 'year_built', 'zip5' ,'bedrooms', 'square_feet_total_living') %>%
  mutate(is_in_98502 = grepl('98052', 'zip5')) %>%
  filter('bedrooms' >= 3) %>%
  group_by('Sale Price') %>%
  summarise(most_expensive = mean(df$square_feet_total_living)) %>%
  arrange(desc('Sale Price'), 'bedrooms') %>%
  head(20)




#Using the purrr package – perform 2 functions on your dataset.  You could use zip_n, keep, discard, compact, etc.
install.packages("tidyverse")
library("purrr")
df %>%
  keep(df$zip5, 5) %>%
  compact()

#Use the cbind and rbind function on your dataset
cbind(df, deparse.level = 1)
rbind(df, deparse.level = 1)

#Split a string, then concatenate the results back together
ingredients = "chickpeas, tahini, olive oil, garlic, salt"
split.ing = strsplit(ingredients, split=",")[[1]]
split.ing
paste(split.ing, collapse=",")
