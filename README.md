# Digit recongnition using Random Forest in RStudio, Python & SAS

## Database
The database used in all three examples is the MNIST database of handwritten digits. The database is created by: Yann LeCun, Courant Institute, NYU, Corinna Cortes, Google Labs, New York, and Christopher J.C. Burges, Microsoft Research, Redmond. The database is found at http://yann.lecun.com/exdb/mnist/.

#### CSV version
In these examples the more conviniet .CSV file created by Joseph Redmon is used. It can be downloadet from: https://pjreddie.com/media/files/mnist_train.csv.

#### Experiment Setup
The goal is to use the random forrest algorithm to classify the digits in the 10 different classes ranging from 0 to 9. The split between training and test is 50/50. Amount of observations included is 1000 training and 1000 test, with the number of trees, ntree-value, being 5.

## RStudio Results
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

## Python Results
#### Accuracy
#### Computational Time [S]

## SAS Results
#### Accuracy
#### Computational Time [S]
