reddit <- read.csv('reddit.csv')
str(reddit)

levels(reddit$age.range)

library(ggplot2)

qplot(data = reddit, x = age.range)
qplot(data = reddit, x = income.range)

levels(reddit$age.range)
ordered_age_range <- ordered(reddit$age.range, 
                        levels=c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"))

qplot(data = reddit, x = ordered_age_range)
