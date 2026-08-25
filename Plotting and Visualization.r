# Creating simple coordinates
x <- c(1, 2, 3, 4, 5)
y <- c(3, 7, 8, 9, 12)

# 1. Scatter Plot (Multiple variables)
plot(x, y, main="My Scatter Plot", xlab="The x-axis", ylab="The y-axis", col="blue", cex=2)

# 2. Bar Chart (Individual categorical variable)
x_bar <- c("A", "B", "C", "D")
y_bar <- c(2, 4, 6, 8)
barplot(y_bar, names.arg = x_bar, col = "red", main="My Bar Chart")