# Codebook for the project of Getting and Cleanning Data.

Description of the variables, the data, and any transformations or work that have been performed in run_analysis.R.


## Raw Data

The raw data for this project can be downloaded from:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Data files used in this project:
- `features_info.txt`:      Shows information about the variables used on the feature vector.

- `features.txt`:           List of all features.

- `activity_labels.txt`:    Links the class labels with their activity name.

- `train/X_train.txt`:      Training set.

- `train/y_train.txt`:      Training labels.

- `train/subject_train.txt`:Each row identifies the subject who performed the activity for each window sample of trainning set. Its range is from 1 to 30. 

- `test/X_test.txt`:        Test set.

- `test/y_test.txt`:        Test labels.

- `test/subject_test.txt`:  Each row identifies the subject who performed the activity for each window sample of testing set. Its range is from 1 to 30. 


## The instruction list

1.  Load original data `X_train.txt` and `X_test.txt`.
2.  Join the Activity and Subject labels to datasets 'X_train' and 'X_test'.
3.  Join the Set labels "training" and "testing" to datasets 'X_train' and 'X_test', so that in the combined datasets, data can also be identified.
4.  Merge the two datasets 'X_train' and 'X_test' into one dataset 'X'.
5.  Extract only the measurements on the mean and standard deviation for each measurement.
    Key words "mean" and "std" were used in feature selection from `features.txt`, however angle features such as "angle(X,gravityMean)" were not selected.
6.  Use descriptive activity names in `activity_labels.txt` to name the activities in the data set by converting the activity column to factors.
7.  Change the column names of features with more readable names by the following steps:
    * Remove character '(', '(' from names
    * Replace character '-' by '.'
    * Replace abbreviations with full words
    * Change "mean" and "std" in captial initial format.
8.  Create a second, independent tidy data set with the average of each variable for each activity and each subject.
    This can be done by different packages and functions such as plyr, reshape2 and aggregation.
9.  Save the clean data sets into files `X_clean.txt` and `X_mean.txt`.

## Variables in the Clean Data Set.

### X_clean.txt:
| Variable | Descritpion
| -------- |---------
|   "tBodyAcceleration.Mean.X"                                  |   Mean time for acceleration of body for X direction.
|   "tBodyAcceleration.Mean.Y"                                  |   Mean time for acceleration of body for Y direction.
|   "tBodyAcceleration.Mean.Z"                                  |   Mean time for acceleration of body for Z direction.
|   "tBodyAcceleration.StandardDeviation.X"                     |   Standard deviation of time for acceleration of body for X direction.
|   "tBodyAcceleration.StandardDeviation.Y"                     |   Standard deviation of time for acceleration of body for Y direction.
|   "tBodyAcceleration.StandardDeviation.Z"                     |   Standard deviation of time for acceleration of body for Z direction.
|   "tGravityAcceleration.Mean.X"                               |   Mean time of acceleration of gravity for X direction.
|   "tGravityAcceleration.Mean.Y"                               |   Mean time of acceleration of gravity for Y direction. 
|   "tGravityAcceleration.Mean.Z"                               |   Mean time of acceleration of gravity for Z direction. 
|   "tGravityAcceleration.StandardDeviation.X"                  |   Standard deviation of time of acceleration of gravity for X direction.
|   "tGravityAcceleration.StandardDeviation.Y"                  |   Standard deviation of time of acceleration of gravity for Y direction.
|   "tGravityAcceleration.StandardDeviation.Z"                  |   Standard deviation of time of acceleration of gravity for Z direction.
|   "tBodyAccelerationJerk.Mean.X"                              |   Mean time of body acceleration jerk for X direction.
|   "tBodyAccelerationJerk.Mean.Y"                              |   Mean time of body acceleration jerk for Y direction.
|   "tBodyAccelerationJerk.Mean.Z"                              |   Mean time of body acceleration jerk for Z direction.
|   "tBodyAccelerationJerk.StandardDeviation.X"                 |   Standard deviation of time of body acceleration jerk for X direction.
|   "tBodyAccelerationJerk.StandardDeviation.Y"                 |   Standard deviation of time of body acceleration jerk for Y direction.
|   "tBodyAccelerationJerk.StandardDeviation.Z"                 |   Standard deviation of time of body acceleration jerk for Z direction.
|   "tBodyGyroscope.Mean.X"                                     |   Mean body gyroscope measurement for X direction.
|   "tBodyGyroscope.Mean.Y"                                     |   Mean body gyroscope measurement for Y direction.
|   "tBodyGyroscope.Mean.Z"                                     |   Mean body gyroscope measurement for Z direction.
|   "tBodyGyroscope.StandardDeviation.X"                        |   Standard deviation of body gyroscope measurement for X direction.
|   "tBodyGyroscope.StandardDeviation.Y"                        |   Standard deviation of body gyroscope measurement for Y direction.
|   "tBodyGyroscope.StandardDeviation.Z"                        |   Standard deviation of body gyroscope measurement for Z direction.
|   "tBodyGyroscopeJerk.Mean.X"                                 |   Mean jerk signal of body for X direction.
|   "tBodyGyroscopeJerk.Mean.Y"                                 |   Mean jerk signal of body for Y direction.
|   "tBodyGyroscopeJerk.Mean.Z"                                 |   Mean jerk signal of body for Z direction.
|   "tBodyGyroscopeJerk.StandardDeviation.X"                    |   Standard deviation of jerk signal of body for X direction.
|   "tBodyGyroscopeJerk.StandardDeviation.Y"                    |   Standard deviation of jerk signal of body for Y direction.
|   "tBodyGyroscopeJerk.StandardDeviation.Z"                    |   Standard deviation of jerk signal of body for Z direction.
|   "tBodyAccelerationMagnitude.Mean"                           |   Mean magnitude of body acceleration.
|   "tBodyAccelerationMagnitude.StandardDeviation"              |   Standard deviation of magnitude of body acceleration.
|   "tGravityAccelerationMagnitude.Mean"                        |   Mean gravity acceleration magnitude. 
|   "tGravityAccelerationMagnitude.StandardDeviation"           |   Standard deviation of gravity acceleration magnitude.
|   "tBodyAccelerationJerkMagnitude.Mean"                       |   Mean magnitude of body acceleration jerk. 
|   "tBodyAccelerationJerkMagnitude.StandardDeviation"          |   Standard deviation of magnitude of body acceleration jerk.
|   "tBodyGyroscopeMagnitude.Mean"                              |   Mean magnitude of body gyroscope measurement.
|   "tBodyGyroscopeMagnitude.StandardDeviation"                 |   Standard deviation of magnitude of body gyroscope measurement.
|   "tBodyGyroscopeJerkMagnitude.Mean"                          |   Mean magnitude of body body gyroscope jerk measurement.
|   "tBodyGyroscopeJerkMagnitude.StandardDeviation"             |   Standard deviation of magnitude of body body gyroscope jerk measurement.
|   "fBodyAcceleration.Mean.X"                                  |   Mean frequency of body acceleration for X direction.
|   "fBodyAcceleration.Mean.Y"                                  |   Mean frequency of body acceleration for Y direction.
|   "fBodyAcceleration.Mean.Z"                                  |   Mean frequency of body acceleration for Z direction.
|   "fBodyAcceleration.StandardDeviation.X"                     |   Standard deviation of frequency of body acceleration for X direction.
|   "fBodyAcceleration.StandardDeviation.Y"                     |   Standard deviation of frequency of body acceleration for Y direction.
|   "fBodyAcceleration.StandardDeviation.Z"                     |   Standard deviation of frequency of body acceleration for Z direction.
|   "fBodyAcceleration.MeanFrequency.X"                         |   Weighted average mean frequency of body acceleration for X direction.
|   "fBodyAcceleration.MeanFrequency.Y"                         |   Weighted average mean frequency of body acceleration for Y direction.
|   "fBodyAcceleration.MeanFrequency.Z"                         |   Weighted average mean frequency of body acceleration for Z direction.
|   "fBodyAccelerationJerk.Mean.X"                              |   Mean frequency of body accerlation jerk for X direction.
|   "fBodyAccelerationJerk.Mean.Y"                              |   Mean frequency of body accerlation jerk for Y direction.
|   "fBodyAccelerationJerk.Mean.Z"                              |   Mean frequency of body accerlation jerk for Z direction.
|   "fBodyAccelerationJerk.StandardDeviation.X"                 |   Standard deviation frequency of body accerlation jerk for X direction.
|   "fBodyAccelerationJerk.StandardDeviation.Y"                 |   Standard deviation frequency of body accerlation jerk for Y direction.
|   "fBodyAccelerationJerk.StandardDeviation.Z"                 |   Standard deviation frequency of body accerlation jerk for Z direction.
|   "fBodyAccelerationJerk.MeanFrequency.X"                     |   Weighted average mean frequency of body accerlation jerk for X direction.
|   "fBodyAccelerationJerk.MeanFrequency.Y"                     |   Weighted average mean frequency of body accerlation jerk for Y direction.
|   "fBodyAccelerationJerk.MeanFrequency.Z"                     |   Weighted average mean frequency of body accerlation jerk for Z direction.
|   "fBodyGyroscope.Mean.X"                                     |   Mean frequency of body gyroscope measurement for X direction.
|   "fBodyGyroscope.Mean.Y"                                     |   Mean frequency of body gyroscope measurement for Y direction.
|   "fBodyGyroscope.Mean.Z"                                     |   Mean frequency of body gyroscope measurement for Z direction.
|   "fBodyGyroscope.StandardDeviation.X"                        |   Standard deviation frequency of body gyroscope measurement for X direction.
|   "fBodyGyroscope.StandardDeviation.Y"                        |   Standard deviation frequency of body gyroscope measurement for Y direction.
|   "fBodyGyroscope.StandardDeviation.Z"                        |   Standard deviation frequency of body gyroscope measurement for Z direction.
|   "fBodyGyroscope.MeanFrequency.X"                            |   Weighted average mean frequency of body gyroscope measurement for X direction.
|   "fBodyGyroscope.MeanFrequency.Y"                            |   Weighted average mean frequency of body gyroscope measurement for Y direction.
|   "fBodyGyroscope.MeanFrequency.Z"                            |   Weighted average mean frequency of body gyroscope measurement for Z direction.
|   "fBodyAccelerationMagnitude.Mean"                           |   Mean frequency of body acceleration magnitude.
|   "fBodyAccelerationMagnitude.StandardDeviation"              |   Standard deviation of frequency of body acceleration magnitude.
|   "fBodyAccelerationMagnitude.MeanFrequency"                  |   Weighted average mean frequency of body acceleration magnitude.
|   "fBodyBodyAccelerationJerkMagnitude.Mean"                   |   Mean frequency of body acceleration jerk magnitude.
|   "fBodyBodyAccelerationJerkMagnitude.StandardDeviation"      |   Standard deviation of frequency of body acceleration jerk magnitude.
|   "fBodyBodyAccelerationJerkMagnitude.MeanFrequency"          |   Weighted average mean frequency of body acceleration jerk magnitude.
|   "fBodyBodyGyroscopeMagnitude.Mean"                          |   Mean frequency of magnitude of body gyroscope measurement.
|   "fBodyBodyGyroscopeMagnitude.StandardDeviation"             |   Standard deviation of frequency of magnitude of body gyroscope measurement.
|   "fBodyBodyGyroscopeMagnitude.MeanFrequency"                 |   Weighted average mean frequency of magnitude of body gyroscope measurement.
|   "fBodyBodyGyroscopeJerkMagnitude.Mean"                      |   Mean frequency of magnitude of body gyroscope jerk measurement.
|   "fBodyBodyGyroscopeJerkMagnitude.StandardDeviation"         |   Standard deviation of frequency of magnitude of body gyroscope jerk measurement.
|   "fBodyBodyGyroscopeJerkMagnitude.MeanFrequency"             |   Weighted average mean frequency of magnitude of body gyroscope jerk measurement.
|   "Activity"                                                  |   Labelled activity of the subject to the specific time measured.
|   "Subject"                                                   |   An identifier of the subject who carried out the experiment.
|   "Set"                                                       |   An identifier of "training" or "testing" which the data set belongs to.

### X_mean.txt
| Variable | Descritpion
| -------- |---------
|   "Subject"                                                   |   An identifier of the subject who carried out the experiment.
|   "Activity"                                                  |   Labelled activity of the subject to the specific time measured.
|   "tBodyAcceleration.Mean.X"                                  |   Mean time for acceleration of body for X direction.
|   "tBodyAcceleration.Mean.Y"                                  |   Mean time for acceleration of body for Y direction.
|   "tBodyAcceleration.Mean.Z"                                  |   Mean time for acceleration of body for Z direction.
|   "tBodyAcceleration.StandardDeviation.X"                     |   Standard deviation of time for acceleration of body for X direction.
|   "tBodyAcceleration.StandardDeviation.Y"                     |   Standard deviation of time for acceleration of body for Y direction.
|   "tBodyAcceleration.StandardDeviation.Z"                     |   Standard deviation of time for acceleration of body for Z direction.
|   "tGravityAcceleration.Mean.X"                               |   Mean time of acceleration of gravity for X direction.
|   "tGravityAcceleration.Mean.Y"                               |   Mean time of acceleration of gravity for Y direction. 
|   "tGravityAcceleration.Mean.Z"                               |   Mean time of acceleration of gravity for Z direction. 
|   "tGravityAcceleration.StandardDeviation.X"                  |   Standard deviation of time of acceleration of gravity for X direction.
|   "tGravityAcceleration.StandardDeviation.Y"                  |   Standard deviation of time of acceleration of gravity for Y direction.
|   "tGravityAcceleration.StandardDeviation.Z"                  |   Standard deviation of time of acceleration of gravity for Z direction.
|   "tBodyAccelerationJerk.Mean.X"                              |   Mean time of body acceleration jerk for X direction.
|   "tBodyAccelerationJerk.Mean.Y"                              |   Mean time of body acceleration jerk for Y direction.
|   "tBodyAccelerationJerk.Mean.Z"                              |   Mean time of body acceleration jerk for Z direction.
|   "tBodyAccelerationJerk.StandardDeviation.X"                 |   Standard deviation of time of body acceleration jerk for X direction.
|   "tBodyAccelerationJerk.StandardDeviation.Y"                 |   Standard deviation of time of body acceleration jerk for Y direction.
|   "tBodyAccelerationJerk.StandardDeviation.Z"                 |   Standard deviation of time of body acceleration jerk for Z direction.
|   "tBodyGyroscope.Mean.X"                                     |   Mean body gyroscope measurement for X direction.
|   "tBodyGyroscope.Mean.Y"                                     |   Mean body gyroscope measurement for Y direction.
|   "tBodyGyroscope.Mean.Z"                                     |   Mean body gyroscope measurement for Z direction.
|   "tBodyGyroscope.StandardDeviation.X"                        |   Standard deviation of body gyroscope measurement for X direction.
|   "tBodyGyroscope.StandardDeviation.Y"                        |   Standard deviation of body gyroscope measurement for Y direction.
|   "tBodyGyroscope.StandardDeviation.Z"                        |   Standard deviation of body gyroscope measurement for Z direction.
|   "tBodyGyroscopeJerk.Mean.X"                                 |   Mean jerk signal of body for X direction.
|   "tBodyGyroscopeJerk.Mean.Y"                                 |   Mean jerk signal of body for Y direction.
|   "tBodyGyroscopeJerk.Mean.Z"                                 |   Mean jerk signal of body for Z direction.
|   "tBodyGyroscopeJerk.StandardDeviation.X"                    |   Standard deviation of jerk signal of body for X direction.
|   "tBodyGyroscopeJerk.StandardDeviation.Y"                    |   Standard deviation of jerk signal of body for Y direction.
|   "tBodyGyroscopeJerk.StandardDeviation.Z"                    |   Standard deviation of jerk signal of body for Z direction.
|   "tBodyAccelerationMagnitude.Mean"                           |   Mean magnitude of body acceleration.
|   "tBodyAccelerationMagnitude.StandardDeviation"              |   Standard deviation of magnitude of body acceleration.
|   "tGravityAccelerationMagnitude.Mean"                        |   Mean gravity acceleration magnitude. 
|   "tGravityAccelerationMagnitude.StandardDeviation"           |   Standard deviation of gravity acceleration magnitude.
|   "tBodyAccelerationJerkMagnitude.Mean"                       |   Mean magnitude of body acceleration jerk. 
|   "tBodyAccelerationJerkMagnitude.StandardDeviation"          |   Standard deviation of magnitude of body acceleration jerk.
|   "tBodyGyroscopeMagnitude.Mean"                              |   Mean magnitude of body gyroscope measurement.
|   "tBodyGyroscopeMagnitude.StandardDeviation"                 |   Standard deviation of magnitude of body gyroscope measurement.
|   "tBodyGyroscopeJerkMagnitude.Mean"                          |   Mean magnitude of body body gyroscope jerk measurement.
|   "tBodyGyroscopeJerkMagnitude.StandardDeviation"             |   Standard deviation of magnitude of body body gyroscope jerk measurement.
|   "fBodyAcceleration.Mean.X"                                  |   Mean frequency of body acceleration for X direction.
|   "fBodyAcceleration.Mean.Y"                                  |   Mean frequency of body acceleration for Y direction.
|   "fBodyAcceleration.Mean.Z"                                  |   Mean frequency of body acceleration for Z direction.
|   "fBodyAcceleration.StandardDeviation.X"                     |   Standard deviation of frequency of body acceleration for X direction.
|   "fBodyAcceleration.StandardDeviation.Y"                     |   Standard deviation of frequency of body acceleration for Y direction.
|   "fBodyAcceleration.StandardDeviation.Z"                     |   Standard deviation of frequency of body acceleration for Z direction.
|   "fBodyAcceleration.MeanFrequency.X"                         |   Weighted average mean frequency of body acceleration for X direction.
|   "fBodyAcceleration.MeanFrequency.Y"                         |   Weighted average mean frequency of body acceleration for Y direction.
|   "fBodyAcceleration.MeanFrequency.Z"                         |   Weighted average mean frequency of body acceleration for Z direction.
|   "fBodyAccelerationJerk.Mean.X"                              |   Mean frequency of body accerlation jerk for X direction.
|   "fBodyAccelerationJerk.Mean.Y"                              |   Mean frequency of body accerlation jerk for Y direction.
|   "fBodyAccelerationJerk.Mean.Z"                              |   Mean frequency of body accerlation jerk for Z direction.
|   "fBodyAccelerationJerk.StandardDeviation.X"                 |   Standard deviation frequency of body accerlation jerk for X direction.
|   "fBodyAccelerationJerk.StandardDeviation.Y"                 |   Standard deviation frequency of body accerlation jerk for Y direction.
|   "fBodyAccelerationJerk.StandardDeviation.Z"                 |   Standard deviation frequency of body accerlation jerk for Z direction.
|   "fBodyAccelerationJerk.MeanFrequency.X"                     |   Weighted average mean frequency of body accerlation jerk for X direction.
|   "fBodyAccelerationJerk.MeanFrequency.Y"                     |   Weighted average mean frequency of body accerlation jerk for Y direction.
|   "fBodyAccelerationJerk.MeanFrequency.Z"                     |   Weighted average mean frequency of body accerlation jerk for Z direction.
|   "fBodyGyroscope.Mean.X"                                     |   Mean frequency of body gyroscope measurement for X direction.
|   "fBodyGyroscope.Mean.Y"                                     |   Mean frequency of body gyroscope measurement for Y direction.
|   "fBodyGyroscope.Mean.Z"                                     |   Mean frequency of body gyroscope measurement for Z direction.
|   "fBodyGyroscope.StandardDeviation.X"                        |   Standard deviation frequency of body gyroscope measurement for X direction.
|   "fBodyGyroscope.StandardDeviation.Y"                        |   Standard deviation frequency of body gyroscope measurement for Y direction.
|   "fBodyGyroscope.StandardDeviation.Z"                        |   Standard deviation frequency of body gyroscope measurement for Z direction.
|   "fBodyGyroscope.MeanFrequency.X"                            |   Weighted average mean frequency of body gyroscope measurement for X direction.
|   "fBodyGyroscope.MeanFrequency.Y"                            |   Weighted average mean frequency of body gyroscope measurement for Y direction.
|   "fBodyGyroscope.MeanFrequency.Z"                            |   Weighted average mean frequency of body gyroscope measurement for Z direction.
|   "fBodyAccelerationMagnitude.Mean"                           |   Mean frequency of body acceleration magnitude.
|   "fBodyAccelerationMagnitude.StandardDeviation"              |   Standard deviation of frequency of body acceleration magnitude.
|   "fBodyAccelerationMagnitude.MeanFrequency"                  |   Weighted average mean frequency of body acceleration magnitude.
|   "fBodyBodyAccelerationJerkMagnitude.Mean"                   |   Mean frequency of body acceleration jerk magnitude.
|   "fBodyBodyAccelerationJerkMagnitude.StandardDeviation"      |   Standard deviation of frequency of body acceleration jerk magnitude.
|   "fBodyBodyAccelerationJerkMagnitude.MeanFrequency"          |   Weighted average mean frequency of body acceleration jerk magnitude.
|   "fBodyBodyGyroscopeMagnitude.Mean"                          |   Mean frequency of magnitude of body gyroscope measurement.
|   "fBodyBodyGyroscopeMagnitude.StandardDeviation"             |   Standard deviation of frequency of magnitude of body gyroscope measurement.
|   "fBodyBodyGyroscopeMagnitude.MeanFrequency"                 |   Weighted average mean frequency of magnitude of body gyroscope measurement.
|   "fBodyBodyGyroscopeJerkMagnitude.Mean"                      |   Mean frequency of magnitude of body gyroscope jerk measurement.
|   "fBodyBodyGyroscopeJerkMagnitude.StandardDeviation"         |   Standard deviation of frequency of magnitude of body gyroscope jerk measurement.
|   "fBodyBodyGyroscopeJerkMagnitude.MeanFrequency"             |   Weighted average mean frequency of magnitude of body gyroscope jerk measurement.


