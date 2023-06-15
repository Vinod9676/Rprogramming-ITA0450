data("USArrests")

summary(USArrests)
str(USArrests)
cat("--\n ")
n_records <- sapply(USArrests, length)
print(n_records)
cat("--\n ")

max_rape_state <- rownames(USArrests)[which.max(USArrests$Rape)]
print(max_rape_state)
cat("--\n ")

max_murder_state <- rownames(USArrests)[which.max(USArrests$Murder)]
min_murder_state <- rownames(USArrests)[which.min(USArrests$Murder)]
print(max_murder_state)
print(min_murder_state)
cat("--\n ")

correlation <- cor(USArrests)
print(correlation)

cat("--\n ")
median_assault <- median(USArrests$Assault)
states_above_median_assault <- rownames(USArrests)[USArrests$Assault > median_assault]
print(states_above_median_assault)

cat("--\n ")
murder_quartiles <- quantile(USArrests$Murder, probs = c(0.25, 0.75))
states_bottom_25_percent <- rownames(USArrests)[USArrests$Murder <= murder_quartiles[1]]
print(states_bottom_25_percent)

cat("--\n ")
hist(USArrests$Murder, main = "Histogram of Murder Arrests", xlab = "Murder Arrests")
plot(density(USArrests$Murder), main = "Density Plot of Murder Arrests")

cat("--\n ")
plot(USArrests$UrbanPop, USArrests$Murder, col = USArrests$Assault, main = "Murder Arrest Rate vs. Urban Population",
     xlab = "Urban Population", ylab = "Murder Arrest Rate", pch = 16, cex = 1.5)

cat("--\n ")
barplot(USArrests$Murder, names.arg = rownames(USArrests), xlab = "US State", ylab = "Murder Rate")
