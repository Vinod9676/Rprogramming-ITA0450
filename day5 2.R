library(reshape2)

data(ChickWeight)
ordered_data <- ChickWeight[order(ChickWeight$weight), ]
grp_data<- split(ordered_data,ordered_data$Diet)
last_six_records <- tail(ordered_data, 6)
print(last_six_records)
cat("----\n" )


melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
mean_weight <- dcast(melted_data, Diet ~ ., mean)
print(mean_weight)
cat("----\n" )

get_mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode_weight<-dcast(melted_data, Diet ~ variable, get_mode)
print(mode_weight)
cat("----\n" )

boxplot(weight ~ Diet, data = ChickWeight)
hist(ChickWeight$weight[ChickWeight$Diet == 1])
plot(weight ~ Time, data = ChickWeight, col = Diet)
cat("----\n" )

model <- lm(weight ~ Time + Diet, data = ChickWeight)
print(model)
cat("----\n" )

new_data <- data.frame(Time = 10, Diet = factor(1))
predicted_weight <- predict(model, newdata = new_data)
print(predicted_weight)
