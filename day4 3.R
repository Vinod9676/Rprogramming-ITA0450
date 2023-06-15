data(ChickWeight)
x<-summary(ChickWeight)
print(x)

boxplot(weight ~ Diet, data = ChickWeight)
hist(ChickWeight$weight[ChickWeight$Diet == 1])
hist(ChickWeight$weight[ChickWeight$Diet == 4])
plot(weight ~ Time, data = ChickWeight, col = Diet)