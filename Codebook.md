# Codebook for the project of Getting and Cleanning Data.

Description of the variables, the data, and any transformations or work that have been performed in run_analysis.R.


## Raw Data

The raw data for this project can be downloaded from:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Data files used in this project:
- 'features_info.txt':      Shows information about the variables used on the feature vector.

- 'features.txt':           List of all features.

- 'activity_labels.txt':    Links the class labels with their activity name.

- 'train/X_train.txt':      Training set.

- 'train/y_train.txt':      Training labels.

- 'train/subject_train.txt':Each row identifies the subject who performed the activity for each window sample of trainning set. Its range is from 1 to 30. 

- 'test/X_test.txt':        Test set.

- 'test/y_test.txt':        Test labels.

- 'test/subject_test.txt':  Each row identifies the subject who performed the activity for each window sample of testing set. Its range is from 1 to 30. 


## The instruction list

1.  Load original data 'X_train.txt' and 'X_test.txt'.
2.  Join the Activity and Subject labels to datasets 'X_train' and 'X_test'.
3.  Join the Set labels "training" and "testing" to datasets 'X_train' and 'X_test', so that in the combined datasets, data can also be identified.
4.  Merge the two datasets 'X_train' and 'X_test' into one dataset 'X'.
5.  Extract only the measurements on the mean and standard deviation for each measurement.
    Key words "mean" and "std" were used in feature selection from 'features.txt', however angle features such as "angle(X,gravityMean)" were not selected.
6.  Use descriptive activity names in 'activity_labels.txt' to name the activities in the data set by converting the activity column to factors.
7.  Change the column names of features with more readable names by the following steps:
    * Remove character '(', '(' from names
    * Replace character '-' by '.'
    * Replace abbreviations with full words
    * Change "mean" and "std" in captial initial format.
8.  Create a second, independent tidy data set with the average of each variable for each activity and each subject.
    This can be done by different packages and functions such as plyr, reshape2 and aggregation.
9.  Save the clean data sets into files 'X_clean.txt' and 'X_mean.txt'.

## Variables in the Clean Data Set.

### Columns of X_clean.txt:
    *   "tBodyAcceleration.Mean.X"
    *   "tBodyAcceleration.Mean.Y"
    *   "tBodyAcceleration.Mean.Z"
    *   "tBodyAcceleration.StandardDeviation.X"
    *   "tBodyAcceleration.StandardDeviation.Y"
    *   "tBodyAcceleration.StandardDeviation.Z"
    *   "tGravityAcceleration.Mean.X"
    *   "tGravityAcceleration.Mean.Y"
    *   "tGravityAcceleration.Mean.Z"
    *   "tGravityAcceleration.StandardDeviation.X"
    *   "tGravityAcceleration.StandardDeviation.Y"
    *   "tGravityAcceleration.StandardDeviation.Z"
    *   "tBodyAccelerationJerk.Mean.X"
    *   "tBodyAccelerationJerk.Mean.Y"
    *   "tBodyAccelerationJerk.Mean.Z"
    *   "tBodyAccelerationJerk.StandardDeviation.X"
    *   "tBodyAccelerationJerk.StandardDeviation.Y"
    *   "tBodyAccelerationJerk.StandardDeviation.Z"
    *   "tBodyGyroscope.Mean.X"
    *   "tBodyGyroscope.Mean.Y"
    *   "tBodyGyroscope.Mean.Z"
    *   "tBodyGyroscope.StandardDeviation.X"
    *   "tBodyGyroscope.StandardDeviation.Y"
    *   "tBodyGyroscope.StandardDeviation.Z"
    *   "tBodyGyroscopeJerk.Mean.X"
    *   "tBodyGyroscopeJerk.Mean.Y"
    *   "tBodyGyroscopeJerk.Mean.Z"
    *   "tBodyGyroscopeJerk.StandardDeviation.X"
    *   "tBodyGyroscopeJerk.StandardDeviation.Y"
    *   "tBodyGyroscopeJerk.StandardDeviation.Z"
    *   "tBodyAccelerationMagnitude.Mean"
    *   "tBodyAccelerationMagnitude.StandardDeviation"
    *   "tGravityAccelerationMagnitude.Mean"
    *   "tGravityAccelerationMagnitude.StandardDeviation"
    *   "tBodyAccelerationJerkMagnitude.Mean"
    *   "tBodyAccelerationJerkMagnitude.StandardDeviation"
    *   "tBodyGyroscopeMagnitude.Mean"
    *   "tBodyGyroscopeMagnitude.StandardDeviation"
    *   "tBodyGyroscopeJerkMagnitude.Mean"
    *   "tBodyGyroscopeJerkMagnitude.StandardDeviation"
    *   "fBodyAcceleration.Mean.X"
    *   "fBodyAcceleration.Mean.Y"
    *   "fBodyAcceleration.Mean.Z"
    *   "fBodyAcceleration.StandardDeviation.X"
    *   "fBodyAcceleration.StandardDeviation.Y"
    *   "fBodyAcceleration.StandardDeviation.Z"
    *   "fBodyAcceleration.MeanFrequency.X"
    *   "fBodyAcceleration.MeanFrequency.Y"
    *   "fBodyAcceleration.MeanFrequency.Z"
    *   "fBodyAccelerationJerk.Mean.X"
    *   "fBodyAccelerationJerk.Mean.Y"
    *   "fBodyAccelerationJerk.Mean.Z"
    *   "fBodyAccelerationJerk.StandardDeviation.X"
    *   "fBodyAccelerationJerk.StandardDeviation.Y"
    *   "fBodyAccelerationJerk.StandardDeviation.Z"
    *   "fBodyAccelerationJerk.MeanFrequency.X"
    *   "fBodyAccelerationJerk.MeanFrequency.Y"
    *   "fBodyAccelerationJerk.MeanFrequency.Z"
    *   "fBodyGyroscope.Mean.X"
    *   "fBodyGyroscope.Mean.Y"
    *   "fBodyGyroscope.Mean.Z"
    *   "fBodyGyroscope.StandardDeviation.X"
    *   "fBodyGyroscope.StandardDeviation.Y"
    *   "fBodyGyroscope.StandardDeviation.Z"
    *   "fBodyGyroscope.MeanFrequency.X"
    *   "fBodyGyroscope.MeanFrequency.Y"
    *   "fBodyGyroscope.MeanFrequency.Z"
    *   "fBodyAccelerationMagnitude.Mean"
    *   "fBodyAccelerationMagnitude.StandardDeviation"
    *   "fBodyAccelerationMagnitude.MeanFrequency"
    *   "fBodyBodyAccelerationJerkMagnitude.Mean"
    *   "fBodyBodyAccelerationJerkMagnitude.StandardDeviation"
    *   "fBodyBodyAccelerationJerkMagnitude.MeanFrequency"
    *   "fBodyBodyGyroscopeMagnitude.Mean"
    *   "fBodyBodyGyroscopeMagnitude.StandardDeviation"
    *   "fBodyBodyGyroscopeMagnitude.MeanFrequency"
    *   "fBodyBodyGyroscopeJerkMagnitude.Mean"
    *   "fBodyBodyGyroscopeJerkMagnitude.StandardDeviation"
    *   "fBodyBodyGyroscopeJerkMagnitude.MeanFrequency"
    *   "Activity"
    *   "Subject"
    *   "Set"

### Columns of X_mean.txt
    *   "Subject"
    *   "Activity"
    *   "tBodyAcceleration.Mean.X"
    *   "tBodyAcceleration.Mean.Y"
    *   "tBodyAcceleration.Mean.Z"
    *   "tBodyAcceleration.StandardDeviation.X"
    *   "tBodyAcceleration.StandardDeviation.Y"
    *   "tBodyAcceleration.StandardDeviation.Z"
    *   "tGravityAcceleration.Mean.X"
    *   "tGravityAcceleration.Mean.Y"
    *   "tGravityAcceleration.Mean.Z"
    *   "tGravityAcceleration.StandardDeviation.X"
    *   "tGravityAcceleration.StandardDeviation.Y"
    *   "tGravityAcceleration.StandardDeviation.Z"
    *   "tBodyAccelerationJerk.Mean.X"
    *   "tBodyAccelerationJerk.Mean.Y"
    *   "tBodyAccelerationJerk.Mean.Z"
    *   "tBodyAccelerationJerk.StandardDeviation.X"
    *   "tBodyAccelerationJerk.StandardDeviation.Y"
    *   "tBodyAccelerationJerk.StandardDeviation.Z"
    *   "tBodyGyroscope.Mean.X"
    *   "tBodyGyroscope.Mean.Y"
    *   "tBodyGyroscope.Mean.Z"
    *   "tBodyGyroscope.StandardDeviation.X"
    *   "tBodyGyroscope.StandardDeviation.Y"
    *   "tBodyGyroscope.StandardDeviation.Z"
    *   "tBodyGyroscopeJerk.Mean.X"
    *   "tBodyGyroscopeJerk.Mean.Y"
    *   "tBodyGyroscopeJerk.Mean.Z"
    *   "tBodyGyroscopeJerk.StandardDeviation.X"
    *   "tBodyGyroscopeJerk.StandardDeviation.Y"
    *   "tBodyGyroscopeJerk.StandardDeviation.Z"
    *   "tBodyAccelerationMagnitude.Mean"
    *   "tBodyAccelerationMagnitude.StandardDeviation"
    *   "tGravityAccelerationMagnitude.Mean"
    *   "tGravityAccelerationMagnitude.StandardDeviation"
    *   "tBodyAccelerationJerkMagnitude.Mean"
    *   "tBodyAccelerationJerkMagnitude.StandardDeviation"
    *   "tBodyGyroscopeMagnitude.Mean"
    *   "tBodyGyroscopeMagnitude.StandardDeviation"
    *   "tBodyGyroscopeJerkMagnitude.Mean"
    *   "tBodyGyroscopeJerkMagnitude.StandardDeviation"
    *   "fBodyAcceleration.Mean.X"
    *   "fBodyAcceleration.Mean.Y"
    *   "fBodyAcceleration.Mean.Z"
    *   "fBodyAcceleration.StandardDeviation.X"
    *   "fBodyAcceleration.StandardDeviation.Y"
    *   "fBodyAcceleration.StandardDeviation.Z"
    *   "fBodyAcceleration.MeanFrequency.X"
    *   "fBodyAcceleration.MeanFrequency.Y"
    *   "fBodyAcceleration.MeanFrequency.Z"
    *   "fBodyAccelerationJerk.Mean.X"
    *   "fBodyAccelerationJerk.Mean.Y"
    *   "fBodyAccelerationJerk.Mean.Z"
    *   "fBodyAccelerationJerk.StandardDeviation.X"
    *   "fBodyAccelerationJerk.StandardDeviation.Y"
    *   "fBodyAccelerationJerk.StandardDeviation.Z"
    *   "fBodyAccelerationJerk.MeanFrequency.X"
    *   "fBodyAccelerationJerk.MeanFrequency.Y"
    *   "fBodyAccelerationJerk.MeanFrequency.Z"
    *   "fBodyGyroscope.Mean.X"
    *   "fBodyGyroscope.Mean.Y"
    *   "fBodyGyroscope.Mean.Z"
    *   "fBodyGyroscope.StandardDeviation.X"
    *   "fBodyGyroscope.StandardDeviation.Y"
    *   "fBodyGyroscope.StandardDeviation.Z"
    *   "fBodyGyroscope.MeanFrequency.X"
    *   "fBodyGyroscope.MeanFrequency.Y"
    *   "fBodyGyroscope.MeanFrequency.Z"
    *   "fBodyAccelerationMagnitude.Mean"
    *   "fBodyAccelerationMagnitude.StandardDeviation"
    *   "fBodyAccelerationMagnitude.MeanFrequency"
    *   "fBodyBodyAccelerationJerkMagnitude.Mean"
    *   "fBodyBodyAccelerationJerkMagnitude.StandardDeviation"
    *   "fBodyBodyAccelerationJerkMagnitude.MeanFrequency"
    *   "fBodyBodyGyroscopeMagnitude.Mean"
    *   "fBodyBodyGyroscopeMagnitude.StandardDeviation"
    *   "fBodyBodyGyroscopeMagnitude.MeanFrequency"
    *   "fBodyBodyGyroscopeJerkMagnitude.Mean"
    *   "fBodyBodyGyroscopeJerkMagnitude.StandardDeviation"
    *   "fBodyBodyGyroscopeJerkMagnitude.MeanFrequency"


