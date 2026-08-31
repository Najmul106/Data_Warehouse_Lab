
student <- data.frame(
  Name = c("Ram", "Riya", "Amit", "Priya"),
  Age = c(20, 21, 22, 20),
  Marks = c(75, 85, 90, 99)
)
barplot(student$Marks, names.arg = student$Name, main = "Students Marks")
barplot(student$Age, names.arg = student$Name, main = "Students Age")

# 2. Visualizing a basic vector
df <- c(75, 85, 90, 99)
barplot(df, names.arg = c("A", "b", "c", "d"), main = "Students Marks")
plot(df)

# 3. Visualizing multiple variables (Scatter plot)
x <- 1:10
y <- x^2
plot(x, y, main="X vs Y^2", xlab="X", ylab="Y")
