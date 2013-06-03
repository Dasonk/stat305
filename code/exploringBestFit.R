library(reshape2)
library(ggplot2)

dat <- tips[tips$sex == "Female",]
o <- lm(tip ~ total_bill, data = dat)

mean(dat$tip/dat$total_bill)
plot(dat$total_bill, dat$tip,  
     xlab = "Total Bill (not including tip) in $",
     ylab = "Tip amount in $", 
     main = "Tip by total amount of the bill for Females",
     pch = 16)


  
p + stat_smooth(method = "lm", se = FALSE)


# y = a + b*x
# first parameter is a  (intercept)
# second parameter is b (slope)
abline(0, .166, col = "red")
abline(.5, .12, col = "blue")


# "Best" fit
abline(o)