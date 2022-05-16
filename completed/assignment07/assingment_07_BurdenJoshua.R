# Assignment: ASSIGNMENT 7
# Name: Burden, Joshua
# Date: 2022-05-15

## Set the working directory to the root of your DSC 520 directory
setwd("/Users/joshua/Documents/PERSONAL_GITHUB_REPOS/dsc520")

## Load the `data/r4ds/heights.csv` to
heights_df <- read.csv("data/r4ds/heights.csv")

# Fit a linear model
earn_lm <-  lm(earn ~ age + sex + height + ed + race, data=heights_df)


# View the summary of your model
summary(earn_lm)

predicted_df <- data.frame(
  earn = predict(earn_lm, heights_df),
  ed=heights_df$ed, race=heights_df$race, height=heights_df$height,
  age=heights_df$age, sex=heights_df$sex
)

print(preditcted_df)
## Compute deviation (i.e. residuals)
mean_earn <- mean(heights_df$earn)
print(mean_earn)
## Correct
# ed Sum of Squares Total
sst <- sum((mean_earn - heights_df$earn)^2)
print(sst)
## Corrected Sum of Squares for Model
ssm <- sum((mean_earn - predicted_df$earn)^2)
print(ssm)
## Residuals
residuals <- heights_df$earn - predicted_df$earn
print(residuals)
## Sum of Squares for Error
sse <- sum(residuals^2)
print(sse)
## R Squared
r_squared <- ssm / sst
print(r_squared)
## Number of observations
n <- nobs(earn_lm)
print(n)
## Number of regression parameters
p <- 8
print(p)
## Corrected Degrees of Freedom for Model
dfm <- p - 1
print(dfm)
## Degrees of Freedom for Error
dfe <- n - p
print(dfe)
## Corrected Degrees of Freedom Total:   DFT = n - 1
dft <- n - 1
print(dft)
## Mean of Squares for Model:   MSM = SSM / DFM
msm <- ssm / dfm
print(msm)
## Mean of Squares for Error:   MSE = SSE / DFE
mse <- sse / dfe
print(mse)
## Mean of Squares Total:   MST = SST / DFT
mst <- sst / dft
print(mst)
## F Statistic
f_score <- msm / mse
print(f_score)

## Adjusted R Squared R2 = 1 - (1 - R2)(n - 1) / (n - p)
adjusted_r_squared <- 1 - (1 - r_squared)*(n - 1) / (n - p)
print(adjusted_r_squared)
