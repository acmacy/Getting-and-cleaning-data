# Codebook for run_analysis.R
Function to input scattered raw data files and clean them to form a structured tiny dataset with requisite variables to enable user to perform analysis.

## Files in Raw Dataset
|Name of File          |Description                                                       |
|----------------------|------------------------------------------------------------------|
|'features_info.txt'   |Shows information about the variables used on the feature vector  |
|'features.txt'        |List of all features                                              |
|'activity_labels.txt' |Links the class labels with their activity name                   |
|'train/X_train.txt'   |Training set                                                      |
|'train/y_train.txt'   |Training labels                                                   |
|'test/X_test.txt'     |Test set                                                          |
|'test/y_test.txt'     |Test labels                                                       |

## List of parameters measured in the raw data sets
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: (after filtering)

* mean(): Mean value
* std(): Standard deviation
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

## Input Dataset after merging
Dimensions: 
* Before filtering: 10299 rows, 563 columns
* After filtering: 10299 rows, 89 columns
* Tidy dataset (with average): 180 rows, 88 columns

## Procedure followed
* Check for presence of Directory (create new if not present)
* Download Zip File of raw Dataset
* Unzip downloaded dataset
* Read Training Data using read.delim()
* Read Test Data using read.delim()
* Combine data in train folder using cbind()
* Combine data in test folder using cbind()
* Combine Training & Test Data using rbind()
* Add Variable names to combined dataset after reading "features.txt"
* Filter dataset variables to include only Mean & Standard Deviation variables
* Read Activity Labels
* Merge Activity labels with filtered dataset
* Change variable names to make them descriptive using colnames()
* View Final Clean dataset
* Create independent tidy Dataset with Averages using aggregate() in dplyr package
* Export tidy data set to get text file


## Summary Statistics for all variables in Clean Dataset

====================================================================================

   Activity

------------------------------------------------------------------------------------

   Storage mode: character

       Length:        180
        Class:  character
         Mode:  character

====================================================================================

   Subject

------------------------------------------------------------------------------------

   Storage mode: integer

          Min.:   1.000
       1st Qu.:   8.000
        Median:  15.500
          Mean:  15.500
       3rd Qu.:  23.000
          Max.:  30.000

====================================================================================

   TimeBodyAccelerometerelerometer-Mean()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  0.222
       1st Qu.:  0.271
        Median:  0.277
          Mean:  0.274
       3rd Qu.:  0.280
          Max.:  0.301

====================================================================================

   TimeBodyAccelerometerelerometer-Mean()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.041
       1st Qu.:  -0.020
        Median:  -0.017
          Mean:  -0.018
       3rd Qu.:  -0.015
          Max.:  -0.001

====================================================================================

   TimeBodyAccelerometerelerometer-Mean()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.152
       1st Qu.:  -0.112
        Median:  -0.108
          Mean:  -0.109
       3rd Qu.:  -0.104
          Max.:  -0.075

====================================================================================

   TimeBodyAccelerometerelerometer-StandardDeviation()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.996
       1st Qu.:  -0.980
        Median:  -0.753
          Mean:  -0.558
       3rd Qu.:  -0.198
          Max.:   0.627

====================================================================================

   TimeBodyAccelerometerelerometer-StandardDeviation()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.990
       1st Qu.:  -0.942
        Median:  -0.509
          Mean:  -0.461
       3rd Qu.:  -0.031
          Max.:   0.617

====================================================================================

   TimeBodyAccelerometerelerometer-StandardDeviation()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.988
       1st Qu.:  -0.950
        Median:  -0.652
          Mean:  -0.576
       3rd Qu.:  -0.231
          Max.:   0.609

====================================================================================

   TimeGravityAccelerometerelerometer-Mean()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.680
       1st Qu.:   0.838
        Median:   0.921
          Mean:   0.698
       3rd Qu.:   0.943
          Max.:   0.975

====================================================================================

   TimeGravityAccelerometerelerometer-Mean()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.480
       1st Qu.:  -0.233
        Median:  -0.128
          Mean:  -0.016
       3rd Qu.:   0.088
          Max.:   0.957

====================================================================================

   TimeGravityAccelerometerelerometer-Mean()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.495
       1st Qu.:  -0.117
        Median:   0.024
          Mean:   0.074
       3rd Qu.:   0.149
          Max.:   0.958

====================================================================================

   TimeGravityAccelerometerelerometer-StandardDeviation()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.997
       1st Qu.:  -0.983
        Median:  -0.970
          Mean:  -0.964
       3rd Qu.:  -0.951
          Max.:  -0.830

====================================================================================

   TimeGravityAccelerometerelerometer-StandardDeviation()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.994
       1st Qu.:  -0.971
        Median:  -0.959
          Mean:  -0.952
       3rd Qu.:  -0.937
          Max.:  -0.644

====================================================================================

   TimeGravityAccelerometerelerometer-StandardDeviation()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.991
       1st Qu.:  -0.961
        Median:  -0.945
          Mean:  -0.936
       3rd Qu.:  -0.918
          Max.:  -0.610

====================================================================================

   TimeBodyAccelerometerelerometerJerk-Mean()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  0.043
       1st Qu.:  0.074
        Median:  0.076
          Mean:  0.079
       3rd Qu.:  0.083
          Max.:  0.130

====================================================================================

   TimeBodyAccelerometerelerometerJerk-Mean()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.039
       1st Qu.:   0.000
        Median:   0.009
          Mean:   0.008
       3rd Qu.:   0.013
          Max.:   0.057

====================================================================================

   TimeBodyAccelerometerelerometerJerk-Mean()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.067
       1st Qu.:  -0.011
        Median:  -0.004
          Mean:  -0.005
       3rd Qu.:   0.002
          Max.:   0.038

====================================================================================

   TimeBodyAccelerometerelerometerJerk-StandardDeviation()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.995
       1st Qu.:  -0.983
        Median:  -0.810
          Mean:  -0.595
       3rd Qu.:  -0.223
          Max.:   0.544

====================================================================================

   TimeBodyAccelerometerelerometerJerk-StandardDeviation()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.990
       1st Qu.:  -0.972
        Median:  -0.776
          Mean:  -0.565
       3rd Qu.:  -0.148
          Max.:   0.355

====================================================================================

   TimeBodyAccelerometerelerometerJerk-StandardDeviation()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.993
       1st Qu.:  -0.983
        Median:  -0.884
          Mean:  -0.736
       3rd Qu.:  -0.512
          Max.:   0.031

====================================================================================

   TimeBodyGyroscopescope-Mean()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.206
       1st Qu.:  -0.047
        Median:  -0.029
          Mean:  -0.032
       3rd Qu.:  -0.017
          Max.:   0.193

====================================================================================

   TimeBodyGyroscopescope-Mean()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.204
       1st Qu.:  -0.090
        Median:  -0.073
          Mean:  -0.074
       3rd Qu.:  -0.061
          Max.:   0.027

====================================================================================

   TimeBodyGyroscopescope-Mean()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.072
       1st Qu.:   0.075
        Median:   0.085
          Mean:   0.087
       3rd Qu.:   0.102
          Max.:   0.179

====================================================================================

   TimeBodyGyroscopescope-StandardDeviation()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.994
       1st Qu.:  -0.974
        Median:  -0.789
          Mean:  -0.692
       3rd Qu.:  -0.441
          Max.:   0.268

====================================================================================

   TimeBodyGyroscopescope-StandardDeviation()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.994
       1st Qu.:  -0.963
        Median:  -0.802
          Mean:  -0.653
       3rd Qu.:  -0.420
          Max.:   0.476

====================================================================================

   TimeBodyGyroscopescope-StandardDeviation()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.986
       1st Qu.:  -0.961
        Median:  -0.801
          Mean:  -0.616
       3rd Qu.:  -0.311
          Max.:   0.565

====================================================================================

   TimeBodyGyroscopescopeJerk-Mean()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.157
       1st Qu.:  -0.103
        Median:  -0.099
          Mean:  -0.096
       3rd Qu.:  -0.091
          Max.:  -0.022

====================================================================================

   TimeBodyGyroscopescopeJerk-Mean()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.077
       1st Qu.:  -0.046
        Median:  -0.041
          Mean:  -0.043
       3rd Qu.:  -0.038
          Max.:  -0.013

====================================================================================

   TimeBodyGyroscopescopeJerk-Mean()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.092
       1st Qu.:  -0.062
        Median:  -0.053
          Mean:  -0.055
       3rd Qu.:  -0.049
          Max.:  -0.007

====================================================================================

   TimeBodyGyroscopescopeJerk-StandardDeviation()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.997
       1st Qu.:  -0.980
        Median:  -0.840
          Mean:  -0.704
       3rd Qu.:  -0.463
          Max.:   0.179

====================================================================================

   TimeBodyGyroscopescopeJerk-StandardDeviation()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.997
       1st Qu.:  -0.983
        Median:  -0.894
          Mean:  -0.764
       3rd Qu.:  -0.586
          Max.:   0.296

====================================================================================

   TimeBodyGyroscopescopeJerk-StandardDeviation()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.995
       1st Qu.:  -0.985
        Median:  -0.861
          Mean:  -0.710
       3rd Qu.:  -0.474
          Max.:   0.193

====================================================================================

   TimeBodyAccelerometerelerometerMagnitudenitude-Mean()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.957
        Median:  -0.483
          Mean:  -0.497
       3rd Qu.:  -0.092
          Max.:   0.645

====================================================================================

   TimeBodyAccelerometerelerometerMagnitudenitude-StandardDeviation()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.943
        Median:  -0.607
          Mean:  -0.544
       3rd Qu.:  -0.209
          Max.:   0.428

====================================================================================

   TimeGravityAccelerometerelerometerMagnitudenitude-Mean()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.957
        Median:  -0.483
          Mean:  -0.497
       3rd Qu.:  -0.092
          Max.:   0.645

====================================================================================

   TimeGravityAccelerometerelerometerMagnitudenitude-StandardDeviation()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.943
        Median:  -0.607
          Mean:  -0.544
       3rd Qu.:  -0.209
          Max.:   0.428

====================================================================================

   TimeBodyAccelerometerelerometerJerkMagnitudenitude-Mean()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.993
       1st Qu.:  -0.981
        Median:  -0.817
          Mean:  -0.608
       3rd Qu.:  -0.246
          Max.:   0.434

====================================================================================

   TimeBodyAccelerometerelerometerJerkMagnitudenitude-StandardDeviation()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.995
       1st Qu.:  -0.977
        Median:  -0.801
          Mean:  -0.584
       3rd Qu.:  -0.217
          Max.:   0.451

====================================================================================

   TimeBodyGyroscopescopeMagnitudenitude-Mean()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.981
       1st Qu.:  -0.946
        Median:  -0.655
          Mean:  -0.565
       3rd Qu.:  -0.216
          Max.:   0.418

====================================================================================

   TimeBodyGyroscopescopeMagnitudenitude-StandardDeviation()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.981
       1st Qu.:  -0.948
        Median:  -0.742
          Mean:  -0.630
       3rd Qu.:  -0.360
          Max.:   0.300

====================================================================================

   TimeBodyGyroscopescopeJerkMagnitudenitude-Mean()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.997
       1st Qu.:  -0.985
        Median:  -0.865
          Mean:  -0.736
       3rd Qu.:  -0.512
          Max.:   0.088

====================================================================================

   TimeBodyGyroscopescopeJerkMagnitudenitude-StandardDeviation()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.998
       1st Qu.:  -0.981
        Median:  -0.881
          Mean:  -0.755
       3rd Qu.:  -0.577
          Max.:   0.250

====================================================================================

   FrequencyBodyAccelerometerelerometer-Mean()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.995
       1st Qu.:  -0.979
        Median:  -0.769
          Mean:  -0.576
       3rd Qu.:  -0.217
          Max.:   0.537

====================================================================================

   FrequencyBodyAccelerometerelerometer-Mean()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.989
       1st Qu.:  -0.954
        Median:  -0.595
          Mean:  -0.489
       3rd Qu.:  -0.063
          Max.:   0.524

====================================================================================

   FrequencyBodyAccelerometerelerometer-Mean()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.990
       1st Qu.:  -0.962
        Median:  -0.724
          Mean:  -0.630
       3rd Qu.:  -0.318
          Max.:   0.281

====================================================================================

   FrequencyBodyAccelerometerelerometer-StandardDeviation()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.997
       1st Qu.:  -0.982
        Median:  -0.747
          Mean:  -0.552
       3rd Qu.:  -0.197
          Max.:   0.658

====================================================================================

   FrequencyBodyAccelerometerelerometer-StandardDeviation()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.991
       1st Qu.:  -0.940
        Median:  -0.513
          Mean:  -0.481
       3rd Qu.:  -0.079
          Max.:   0.560

====================================================================================

   FrequencyBodyAccelerometerelerometer-StandardDeviation()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.946
        Median:  -0.644
          Mean:  -0.582
       3rd Qu.:  -0.266
          Max.:   0.687

====================================================================================

   FrequencyBodyAccelerometerelerometer-MeanFreq()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.636
       1st Qu.:  -0.392
        Median:  -0.257
          Mean:  -0.232
       3rd Qu.:  -0.061
          Max.:   0.159

====================================================================================

   FrequencyBodyAccelerometerelerometer-MeanFreq()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.380
       1st Qu.:  -0.081
        Median:   0.008
          Mean:   0.012
       3rd Qu.:   0.086
          Max.:   0.467

====================================================================================

   FrequencyBodyAccelerometerelerometer-MeanFreq()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.520
       1st Qu.:  -0.036
        Median:   0.066
          Mean:   0.044
       3rd Qu.:   0.175
          Max.:   0.403

====================================================================================

   FrequencyBodyAccelerometerelerometerJerk-Mean()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.995
       1st Qu.:  -0.983
        Median:  -0.813
          Mean:  -0.614
       3rd Qu.:  -0.282
          Max.:   0.474

====================================================================================

   FrequencyBodyAccelerometerelerometerJerk-Mean()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.989
       1st Qu.:  -0.973
        Median:  -0.782
          Mean:  -0.588
       3rd Qu.:  -0.196
          Max.:   0.277

====================================================================================

   FrequencyBodyAccelerometerelerometerJerk-Mean()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.992
       1st Qu.:  -0.980
        Median:  -0.871
          Mean:  -0.714
       3rd Qu.:  -0.470
          Max.:   0.158

====================================================================================

   FrequencyBodyAccelerometerelerometerJerk-StandardDeviation()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.995
       1st Qu.:  -0.985
        Median:  -0.825
          Mean:  -0.612
       3rd Qu.:  -0.247
          Max.:   0.477

====================================================================================

   FrequencyBodyAccelerometerelerometerJerk-StandardDeviation()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.991
       1st Qu.:  -0.974
        Median:  -0.785
          Mean:  -0.571
       3rd Qu.:  -0.169
          Max.:   0.350

====================================================================================

   FrequencyBodyAccelerometerelerometerJerk-StandardDeviation()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.993
       1st Qu.:  -0.984
        Median:  -0.895
          Mean:  -0.756
       3rd Qu.:  -0.544
          Max.:  -0.006

====================================================================================

   FrequencyBodyAccelerometerelerometerJerk-MeanFreq()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.576
       1st Qu.:  -0.290
        Median:  -0.061
          Mean:  -0.069
       3rd Qu.:   0.177
          Max.:   0.331

====================================================================================

   FrequencyBodyAccelerometerelerometerJerk-MeanFreq()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.602
       1st Qu.:  -0.398
        Median:  -0.232
          Mean:  -0.228
       3rd Qu.:  -0.047
          Max.:   0.196

====================================================================================

   FrequencyBodyAccelerometerelerometerJerk-MeanFreq()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.628
       1st Qu.:  -0.309
        Median:  -0.092
          Mean:  -0.138
       3rd Qu.:   0.039
          Max.:   0.230

====================================================================================

   FrequencyBodyGyroscopescope-Mean()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.993
       1st Qu.:  -0.970
        Median:  -0.730
          Mean:  -0.637
       3rd Qu.:  -0.339
          Max.:   0.475

====================================================================================

   FrequencyBodyGyroscopescope-Mean()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.994
       1st Qu.:  -0.970
        Median:  -0.814
          Mean:  -0.677
       3rd Qu.:  -0.446
          Max.:   0.329

====================================================================================

   FrequencyBodyGyroscopescope-Mean()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.986
       1st Qu.:  -0.962
        Median:  -0.791
          Mean:  -0.604
       3rd Qu.:  -0.264
          Max.:   0.492

====================================================================================

   FrequencyBodyGyroscopescope-StandardDeviation()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.995
       1st Qu.:  -0.975
        Median:  -0.809
          Mean:  -0.711
       3rd Qu.:  -0.481
          Max.:   0.197

====================================================================================

   FrequencyBodyGyroscopescope-StandardDeviation()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.994
       1st Qu.:  -0.960
        Median:  -0.796
          Mean:  -0.645
       3rd Qu.:  -0.415
          Max.:   0.646

====================================================================================

   FrequencyBodyGyroscopescope-StandardDeviation()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.964
        Median:  -0.822
          Mean:  -0.658
       3rd Qu.:  -0.392
          Max.:   0.522

====================================================================================

   FrequencyBodyGyroscopescope-MeanFreq()-X

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.396
       1st Qu.:  -0.213
        Median:  -0.116
          Mean:  -0.105
       3rd Qu.:   0.003
          Max.:   0.249

====================================================================================

   FrequencyBodyGyroscopescope-MeanFreq()-Y

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.667
       1st Qu.:  -0.294
        Median:  -0.158
          Mean:  -0.167
       3rd Qu.:  -0.043
          Max.:   0.273

====================================================================================

   FrequencyBodyGyroscopescope-MeanFreq()-Z

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.507
       1st Qu.:  -0.155
        Median:  -0.051
          Mean:  -0.057
       3rd Qu.:   0.042
          Max.:   0.377

====================================================================================

   FrequencyBodyAccelerometerelerometerMagnitudenitude-Mean()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.956
        Median:  -0.670
          Mean:  -0.536
       3rd Qu.:  -0.162
          Max.:   0.587

====================================================================================

   FrequencyBodyAccelerometerelerometerMagnitudenitude-StandardDeviation()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.988
       1st Qu.:  -0.945
        Median:  -0.651
          Mean:  -0.621
       3rd Qu.:  -0.365
          Max.:   0.179

====================================================================================

   FrequencyBodyAccelerometerelerometerMagnitudenitude-MeanFreq()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.312
       1st Qu.:  -0.015
        Median:   0.081
          Mean:   0.076
       3rd Qu.:   0.174
          Max.:   0.436

====================================================================================

   FrequencyBodyAccelerometerelerometerJerkMagnitudenitude-Mean()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.994
       1st Qu.:  -0.977
        Median:  -0.794
          Mean:  -0.576
       3rd Qu.:  -0.187
          Max.:   0.538

====================================================================================

   FrequencyBodyAccelerometerelerometerJerkMagnitudenitude-StandardDeviation()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.994
       1st Qu.:  -0.975
        Median:  -0.813
          Mean:  -0.599
       3rd Qu.:  -0.267
          Max.:   0.316

====================================================================================

   FrequencyBodyAccelerometerelerometerJerkMagnitudenitude-MeanFreq()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.125
       1st Qu.:   0.045
        Median:   0.172
          Mean:   0.163
       3rd Qu.:   0.276
          Max.:   0.488

====================================================================================

   FrequencyBodyGyroscopescopeMagnitudenitude-Mean()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.962
        Median:  -0.766
          Mean:  -0.667
       3rd Qu.:  -0.409
          Max.:   0.204

====================================================================================

   FrequencyBodyGyroscopescopeMagnitudenitude-StandardDeviation()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.982
       1st Qu.:  -0.949
        Median:  -0.773
          Mean:  -0.672
       3rd Qu.:  -0.428
          Max.:   0.237

====================================================================================

   FrequencyBodyGyroscopescopeMagnitudenitude-MeanFreq()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.457
       1st Qu.:  -0.170
        Median:  -0.054
          Mean:  -0.036
       3rd Qu.:   0.082
          Max.:   0.409

====================================================================================

   FrequencyBodyGyroscopescopeJerkMagnitudenitude-Mean()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.998
       1st Qu.:  -0.981
        Median:  -0.878
          Mean:  -0.756
       3rd Qu.:  -0.583
          Max.:   0.147

====================================================================================

   FrequencyBodyGyroscopescopeJerkMagnitudenitude-StandardDeviation()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.998
       1st Qu.:  -0.980
        Median:  -0.894
          Mean:  -0.771
       3rd Qu.:  -0.608
          Max.:   0.288

====================================================================================

   FrequencyBodyGyroscopescopeJerkMagnitudenitude-MeanFreq()

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.183
       1st Qu.:   0.054
        Median:   0.112
          Mean:   0.126
       3rd Qu.:   0.208
          Max.:   0.426

====================================================================================

   angle(tBodyAccelerometerelerometerMean,gravity)

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.163
       1st Qu.:  -0.011
        Median:   0.008
          Mean:   0.007
       3rd Qu.:   0.024
          Max.:   0.129

====================================================================================

   angle(tBodyAccelerometerelerometerJerkMean),gravityMean)

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.121
       1st Qu.:  -0.021
        Median:   0.003
          Mean:   0.001
       3rd Qu.:   0.022
          Max.:   0.203

====================================================================================

   angle(tBodyGyroscopescopeMean,gravityMean)

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.389
       1st Qu.:  -0.020
        Median:   0.021
          Mean:   0.022
       3rd Qu.:   0.065
          Max.:   0.444

====================================================================================

   angle(tBodyGyroscopescopeJerkMean,gravityMean)

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.224
       1st Qu.:  -0.056
        Median:  -0.016
          Mean:  -0.011
       3rd Qu.:   0.032
          Max.:   0.182

====================================================================================

   angle(X,gravityMean)

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.947
       1st Qu.:  -0.791
        Median:  -0.738
          Mean:  -0.524
       3rd Qu.:  -0.582
          Max.:   0.738

====================================================================================

   angle(Y,gravityMean)

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.875
       1st Qu.:   0.022
        Median:   0.171
          Mean:   0.079
       3rd Qu.:   0.243
          Max.:   0.425

====================================================================================

   angle(Z,gravityMean)

------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.874
       1st Qu.:  -0.084
        Median:   0.005
          Mean:  -0.040
       3rd Qu.:   0.106
          Max.:   0.390

