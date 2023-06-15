library(plotrix)
h<- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
w<- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
relation <- lm(w~h)
print(relation)
a <- data.frame(h = 170)
result <- predict(relation,a)
print(result)

plot(w,h,col = "blue",main = "Height & Weight Regression",
     abline(lm(h~w)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")
