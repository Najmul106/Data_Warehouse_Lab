#Demonstrate pre-processing on some data set p6
data(iris)
head(iris)
str(iris)
dim(iris)

# 1. Missing Values Inspection
sum(is.na(iris))
colSums(is.na(iris))

# 2. Duplicate Handling
sum(duplicated(iris))
iris_clean <- iris[!duplicated(iris), ]
nrow(iris_clean)

# 3. Normalization (Min-Max Scaling)
normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
iris_normalized <- iris_clean
iris_normalized[, 1:4] <- apply(iris_clean[, 1:4], 2, normalize)
head(iris_normalized)

# 4. Standardization (Z-score Scaling) optional
iris_standardized <- iris_clean
iris_standardized[, 1:4] <- scale(iris_clean[, 1:4])
head(iris_standardized)

# 5. Visualization for Preprocessing
boxplot(iris_clean[, 1:4], main = "Boxplot iris")

# 6. Feature Selection
iris_selected <- iris_clean[, c("Sepal.Length", "Petal.Length", "Species")] 
head(iris_selected)

# 7. Train/Test Data Splitting (80/20 Split)
set.seed(123)
sample_rows <- sample(1:nrow(iris_clean), round(0.80 * nrow(iris_clean)))
train_data <- iris_clean[sample_rows, ]
test_data <- iris_clean[-sample_rows, ]

# Verify split dimensions
dim(train_data)
dim(test_data)
