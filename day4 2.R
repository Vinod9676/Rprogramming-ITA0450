library(reshape2)
data(ChickWeight)
x<-summary(ChickWeight)
print(x)
n_records <- sapply(ChickWeight, length)
print(n_records)

lsts<-tail(ChickWeight,6)z
print(lsts)
                         
ordered_data <- ChickWeight[order(ChickWeight$weight), ]
grp_data<- split(ordered_data,ordered_data$Diet)
print(grp_data)

melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
mean_weight <- dcast(melted_data, Diet ~ ., mean)
print(mean_weight)