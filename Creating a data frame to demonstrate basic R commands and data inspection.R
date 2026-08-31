# Practical 1: Import data set to R-Studio and demonstration of R software
# Creating a data frame to demonstrate basic R commands and data inspection
student <- data.frame(
  Name = c("Ram", "Riya", "Amit", "Priya"),
  Age = c(20, 21, 22, 20),
  Marks = c(75, 85, 90, 99)
)

# Basic demonstration commands
head(student)
tail(student)
str(student)
summary(student)

# Accessing variables
student$Name
student$Marks
student[, 1]
student[, 2:3]
student[1, ]
