# Digit recongnition using Random Forest in RStudio

## Database
The database used in all three examples is the MNIST database of handwritten digits. The database is created by: Yann LeCun, Courant Institute, NYU, Corinna Cortes, Google Labs, New York, and Christopher J.C. Burges, Microsoft Research, Redmond. The database is found at http://yann.lecun.com/exdb/mnist/.

### CSV version
In these examples the more conviniet .CSV file created by Joseph Redmon is used. It can be downloadet from: https://pjreddie.com/media/files/mnist_train.csv.

## Results from R-RF
The goal is to use the random forrest algorithm to classify the digits in the 10 different classes ranging from 0 to 9. The split between training and test is 50/50. Amount of observations included is 1000 training and 1000 test, with the number of trees, ntree-value, being 5.


#### Confusion Matrix
| Prediction / Reference | 0  | 1  | 2  | 3  | 4  | 5  | 6  | 7  | 8  | 9  |
|------------------------|----|----|----|----|----|----|----|----|----|----|
| 0                      | 82 | 0  | 2  | 2  | 0  | 4  | 1  | 0  | 1  | 1  |
| 1                      | 0  | 89 | 1  | 0  | 1  | 0  | 0  | 3  | 10 | 0  |
| 2                      | 2  | 5  | 65 | 0  | 5  | 5  | 3  | 5  | 5  | 4  |
| 3                      | 3  | 0  | 8  | 57 | 1  | 15 | 1  | 3  | 5  | 5  |
| 4                      | 1  | 4  | 3  | 5  | 68 | 5  | 2  | 1  | 2  | 18 |
| 5                      | 4  | 1  | 1  | 13 | 8  | 47 | 4  | 3  | 6  | 2  |
| 6                      | 2  | 2  | 4  | 2  | 6  | 4  | 84 | 1  | 0  | 1  |
| 7                      | 0  | 0  | 5  | 6  | 6  | 3  | 0  | 82 | 2  | 3  |
| 8                      | 2  | 2  | 7  | 12 | 2  | 5  | 4  | 1  | 49 | 1  |
| 9                      | 1  | 0  | 1  | 6  | 12 | 1  | 2  | 7  | 0  | 80 |

#### Accuracy
The aquired accuracy was 0.70

#### Computational Time [S]
The computational time was 0.68 seconds.

## Results from R-RF-hyper-opti
The goal is to optimize the hyperparameters for the Random Forest algorithm. In the case of Random Forest the only hyperparameter is mtry.
### Automatic Hyperparameter Tuning Results
Conditional Inference Random Forest 

500 samples
784 predictors
 10 classes: '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' 

No pre-processing
Resampling: Bootstrapped (25 reps) 
Summary of sample sizes: 500, 500, 500, 500, 500, 500, ... 
Resampling results across tuning parameters:

  |mtry| Accuracy  | Kappa     |
  |----|-----------|-----------|
  | 2  | 0.6743784 | 0.6356035 |
  |39  | 0.7478868 | 0.7179389 |
  |783 |  0.5472517|  0.4932122|

Accuracy was used to select the optimal model using the largest value.
The final value used for the model was mtry = 39.

##### Comparing Test and Training Accuracy
The training accuracy was 0.90 and the test accuracy was 0.69.

### Manual Hyperparameter Grid Tuning
Conditional Inference Random Forest 

500 samples
784 predictors
 10 classes: '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' 

No pre-processing
Resampling: Bootstrapped (25 reps) 
Summary of sample sizes: 500, 500, 500, 500, 500, 500, ... 
Resampling results across tuning parameters:

| mtry | Accuracy  | Kappa     |
|------|-----------|-----------|
| 5    |0.7913168  |0.7669800  |
| 15   | 0.7941861 | 0.7701904 |
| 25   | 0.7857540 | 0.7607746 |
| 35   | 0.7715176 | 0.7448272 |
| 45   | 0.7533879 | 0.7245180 |
| 55   | 0.7479719 | 0.7184795 |

Accuracy was used to select the optimal model using the largest value.
The final value used for the model was mtry = 15.

##### Comparing Test and Training Accuracy
The training accuracy was 0.94 and the test accuracy was 0.74.
