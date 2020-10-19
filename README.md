# Digit recongnition using Random Forest in RStudio, Python & SAS

## Database
The database used in all three examples is the MNIST database of handwritten digits. The database is created by: Yann LeCun, Courant Institute, NYU, Corinna Cortes, Google Labs, New York, and Christopher J.C. Burges, Microsoft Research, Redmond. The database is found at http://yann.lecun.com/exdb/mnist/.

#### CSV version
In these examples the more conviniet .CSV file created by Joseph Redmon is used. It can be downloadet from: https://pjreddie.com/media/files/mnist_train.csv.

#### Experiment Setup

## RStudio Results
#### Accuracy
| Observations | Ntree = 1 | Ntree = 3 | Ntree = 5 | Ntree = 10 | Ntree = 20 |
|--------------|-----------|-----------|-----------|------------|------------|
| 1000         |      0.52 |      0.51 |      0.60 |       0.73 |       0.76 |
| 2000         |      0.52 |      0.62 |      0.72 |       0.80 |       0.84 |
| 3000         |      0.61 |      0.72 |      0.78 |       0.84 |       0.88 |
| 4000         |      0.66 |      0.74 |      0.79 |       0.85 |       0.88 |

#### Computational Time [S]

| Observations | Ntree = 1 | Ntree = 3 | Ntree = 5 | Ntree = 10 | Ntree = 20 |
|--------------|-----------|-----------|-----------|------------|------------|
| 1000         |      0.41 |      0.31 |      0.35 |       0.42 |       0.66 |
| 2000         |      0.39 |      0.44 |      0.49 |       0.68 |       1.20 |
| 3000         |      0.45 |      0.53 |      0.66 |       1.00 |       1.66 |
| 4000         |      0.63 |      0.65 |      0.86 |       1.38 |       2.34 |

## Python Results
#### Accuracy
#### Computational Time [S]

## SAS Results
#### Accuracy
#### Computational Time [S]
