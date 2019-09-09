# 1)Data set has taken from kaggle.com repisotory
# Data set is named as "Datafiniti_Pizza"
# 2) Data set is imported in R as pizza
library(readr)
pizza <- read_csv("Datafiniti_Pizza.csv",col_names = TRUE)
View(pizza)
# 3) statistics for the imported data set
# Average amount for the minus.Amountmax using mean() function
mean(pizza$menus.amountMax)
length(pizza$menus.amountMax) # For counting the number of columns
# Finding the mean without using the function
sum(pizza$menus.amountMax)/(length(pizza$menus.amountMax)) 
# Median for the menus.amount using median() function
median(pizza$menus.amountMin)
# Variance for the price range max
var(pizza$priceRangeMax)
# variance for the price range max without formula
a <- pizza$priceRangeMax
abc<-sum((a-mean(a))^2)/(length(a)-1)
abc
# Standrad deviation for the price range max
sd(pizza$priceRangeMax)
# standard deviation for the price range max without formulae
sqrt(abc)
# Summary of the above data set
summary(pizza)
# coorelation between menus.amountmax to pricerangemax
c <- pizza$priceRangeMax
y <- pizza$menus.amountMax
cor(c,y)
# Plotting the bar graph
tab<-sample(table(pizza$city),5)
par(las=0.5)
windows()
barplot(tab,horiz = TRUE,space = 2,col = c("red","green","orange","blue","pink"),xlab = "frquency count",ylab = "city names",main = "Sample graph of city count",legend.text = names(tab),xpd = TRUE) 



