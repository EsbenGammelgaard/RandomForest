library(randomForest) # Package required for randomforest
library(caret) # Package required for confusion matrix

# Importing data
mnist_raw <-
  read.csv(file.path("C:\\Users\\esbe1\\Desktop\\Portfolio", "mnist_train.csv"))

# Required inputs
split <- 50  # Split size where 90 means that it is 90/10
size <- 2000
ntree <- 5

# Splitting between train and test data
start <- Sys.time()
mnist_train <- mnist_raw[1:(size * split * 0.01), -1]
mnist_test <- mnist_raw[(size * split * 0.01 + 1):size, -1]

# Splitting between train and test labels
mnist_train_labels <-
  factor(mnist_raw[1:(size * split * 0.01), 1])
mnist_test_labels <-
  factor(mnist_raw[(size * split * 0.01 + 1):size, 1])

# Training the algorithm
rf <-
  randomForest(mnist_train_labels ~ ., data = mnist_train, ntree = ntree)

# Predicting the test data
mnist_pred <- predict(rf, mnist_test, type = 'class')

# Confusion Matrix and calculation of overall accuracy
cf_m  <- confusionMatrix(mnist_test_labels , mnist_pred)
acc <-
  sum(diag(cf_m$table)) / sum(cf_m$table)

#logging results
stop <- Sys.time()
time <- stop - start
write.table(cf_m$table,
            "C:/Users/esbe1/Desktop/Portfolio/R-RF-CF.txt",
            sep = ",")
