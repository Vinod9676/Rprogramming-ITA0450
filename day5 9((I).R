set.seed(42)
matrix_data <- matrix(sample(1:100, 12, replace = TRUE), nrow = 3, ncol = 4, byrow = TRUE)
colnames(matrix_data) <- c("uno", "dos", "tres", "cuatro")
rownames(matrix_data) <- c("x", "y", "z")
scaled_matrix <- matrix_data * 10
print(" the scaled matrix:")
print(scaled_matrix)

uno_vector <- matrix_data[, "uno"]
cat("\n the vector of uno column:\n ")
print(uno_vector)

y_vector<-matrix_data["y", ]
sum_y<-sum(y_vector)
cat("\n the sum of the vec:", sum_y)