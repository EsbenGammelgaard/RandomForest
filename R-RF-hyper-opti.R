library("caret")
library("party")

# Importing data
if (exists("mnist_raw") == FALSE) {
  mnist_raw <-
    read.csv(file.path("C:\\Users\\esbe1\\Desktop\\Portfolio", "mnist_train.csv"))
}

size <- 1000
split <- 50

# Splitting between train and test data
mnist_train <- mnist_raw[1:(size * split * 0.01),-1]
mnist_test <- mnist_raw[(size * split * 0.01 + 1):size,-1]

# Splitting between train and test labels
mnist_train_labels <-
  factor(mnist_raw[1:(size * split * 0.01), 1])
mnist_test_labels <-
  factor(mnist_raw[(size * split * 0.01 + 1):size, 1])

# Training Random Forest algorithm with carets automatic hyperparameter tuning
cforest0 <-
  train(mnist_train, mnist_train_labels, method = "cforest")cf

# Evaluating performance
cf_train0 <- table(mnist_train_labels, predict(cforest0))
acc_train0 <- sum(diag(cf_train0)) / sum(cf_train0)

cf_test0 <- table(mnist_test_labels, predict(cforest0, mnist_test))
acc_test0 <- sum(diag(cf_test0)) / sum(cf_test0)

# Training Random Forest algorithm with manual hyperparameter grid tuning
hyperparams <- expand.grid(mtry = seq(5, 55, 10))
cforest1 <-
  train(mnist_train,
        mnist_train_labels,
        method = "cforest",
        tuneGrid = hyperparams)

# Evaluating performance
cf_train1 <- table(mnist_train_labels, predict(cforest1))
acc_train1 <- sum(diag(cf_train1)) / sum(cf_train1)

cf_test1 <- table(mnist_test_labels, predict(cforest1, mnist_test))
acc_test1 <- sum(diag(cf_test1)) / sum(cf_test1)

cforest1