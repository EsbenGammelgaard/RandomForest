library(randomForest) # Package required for randomforest
library(caret) # Package required for confusion matrix

# Importing data
mnist_raw <-
  read.csv(file.path("C:\\Users\\esbe1\\Desktop\\Portfolio", "mnist_train.csv"))

# Required inputs
split <- 50  # Split size where 90 means that it is 90/10 
size_matrix <- c(1000, 2000, 3000, 4000)
ntree_matrix <- c(1, 3, 5, 10, 20)

# Creating results Matrix
results <- matrix(1:20, nrow = 5)
results_time <- matrix(1:20, nrow = 5)

colnames(results) <- size_matrix
rownames(results) <- ntree_matrix
colnames(results_time) <- size_matrix
rownames(results_time) <- ntree_matrix

for (ntree in ntree_matrix){
  for (size in size_matrix){
    start <- Sys.time()
    
    # Splitting between train and test data
    mnist_train <- mnist_raw[1:(size * split * 0.01), -1]
    mnist_test <- mnist_raw[(size * split * 0.01 + 1):size, -1]
    
    # Splitting between train and test labels
    mnist_train_labels <- factor(mnist_raw[1:(size * split * 0.01), 1])
    mnist_test_labels <-
      factor(mnist_raw[(size * split * 0.01 + 1):size, 1])
    
    # Training the algorithm
    rf <- randomForest(mnist_train_labels~., data = mnist_train, ntree = ntree)
    
    # Predicting the test data
    mnist_pred <- predict(rf,mnist_test,type = 'class')
    
    # Confusion Matrix and calculation of overall accuracy
    cf_half_ind  <- confusionMatrix(mnist_test_labels , mnist_pred)
    cf_half_ind$table
    acc_half_ind <-
      sum(diag(cf_half_ind$table)) / sum(cf_half_ind$table)
    
    #logging results
    stop <- Sys.time()
    results[toString(ntree),toString(size)] <- acc_half_ind
    results_time[toString(ntree),toString(size)] <- stop - start
    
}}