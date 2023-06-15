random_sample <- sample(LETTERS,20, replace = TRUE)
print(random_sample)
factor_sample <- factor(random_sample)
five_levels <- levels(factor_sample)[1:5]
print(five_levels)

rng<-function(vec) {
  max_val <- max(vec)
  min_val <- min(vec)
  range_val <- max_val - min_val
  cat(" the range in the given sample:")
  return(range_val)
}

n<-as.integer(readline(prompt= "enter the no of  values to create a sample vector:"))
C<-c()
for(i in 1:n)
{
  new<-as.integer(readline(prompt = "Enter value:"))
  C<-append(C,new)
}
print(rng(C))

countVowels <- function(strr) {
  vowels <- c("a", "e", "i", "o", "u")
  count <- 0
  for (char in strsplit(tolower(strr), "")[[1]]) {
    if (char %in% vowels) {
      count <- count + 1
    }
  }
  return(count)
}
input <-readline(prompt = "enter the string:")
vowelCount <- countVowels(input)
print(vowelCount)