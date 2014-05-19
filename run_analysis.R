## GCData_Project1
## run_analysis.R: Seven: 18/05/2014: This script is for the following analysis. 
##      1.Merges the training and the test sets to create one data set.
##      2.Extracts only the measurements on the mean and standard deviation for each measurement. 
##      3.Uses descriptive activity names to name the activities in the data set
##      4.Appropriately labels the data set with descriptive activity names. 
##      5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## To set the locale settings if they are not in English.
#   Sys.setlocale(category = "LC_ALL", locale = "UK")

## Set working directory.
#   setwd("E:\\Open University\\Getting_and_Cleaning_Data@Johns_Hopkins\\GCData_Project1")

## Load and attach required package(s).
require(data.table)

## Load original data from dataset file.
features <- fread("features.txt")
setnames(features, names(features), c("No", "Feature"))
activities <- fread("activity_labels.txt")
setnames(activities, names(activities), c("No", "Activity"))

## In the orginal files such as "X_train.txt", the separators can either be one space or two spaces.
## It seems that fread cannot support files with different separators (even they are different number of spaces).
## The first character cannot be separator either.
## To read files more efficiently, files have been pre-processed by non-R commands so that they have only one space as separators.
# X_train <- fread("./train/X_train.txt", header=F, na.strings=c("N/A"))

## To avoid the issues of fread, we use read.table instead.
X_train <- read.table("./train/X_train.txt", header=F, colClasses="numeric", na.strings=c("N/A"))
X_train <- data.table(X_train)
## There are some duplicate features, therefore names will be assigned later.
# setnames(X_train, names(X_train), unlist(features$Feature))

X_test <- read.table("./test/X_test.txt", header=F, colClasses="numeric", na.strings=c("N/A"))
X_test <- data.table(X_test)
## There are some duplicate features, therefore names will be assigned later.
# setnames(X_test, names(X_test), unlist(features$Feature))

## Merge the Activity and Subject labels to data sets.
X_train$Activity <- read.table("./train/y_train.txt", header=F, colClasses="numeric", na.strings=c("N/A"))
X_train$Subject <- read.table("./train/subject_train.txt", header=F, colClasses="numeric", na.strings=c("N/A"))
X_test$Activity <- read.table("./test/y_test.txt", header=F, colClasses="numeric", na.strings=c("N/A"))
X_test$Subject <- read.table("./test/subject_test.txt", header=F, colClasses="numeric", na.strings=c("N/A"))

## Project Task: 1.Merges the training and the test sets to create one data set.

## Add data set labels before merge.
X_train$Set <- "training"
X_test$Set <- "testing"

## Merge two data sets.
X <- rbind(X_train, X_test)
# X <- transform(X, Subject=factor(Subject))

## Project Task: 2.Extracts only the measurements on the mean (including meanFreq) and standard deviation for each measurement. 
subfeaturesIndex <- grep( "mean[(A-Z]|std", features$Feature, ignore.case=T)
rmfeaturesIndex <- setdiff(1:561, subfeaturesIndex)
## Extract subset of X by removing unrequired columns.
X <- X[, -rmfeaturesIndex, with=F]

## Project Task: 3.Uses descriptive activity names to name the activities in the data set
activitylevels <- as.list(activities$No)
names(activitylevels) <- activities$Activity
X <- transform(X, Activity=factor(Activity, levels=activitylevels, labels=activities$Activity))

## Project Task: 4.Appropriately labels the data set with descriptive activity names. 
subfeatures = features[subfeaturesIndex]
## Remove character '(', '(' from names
subfeaturenames = gsub("[()]", "", subfeatures$Feature)
## Replace character '-' by '.'
subfeaturenames = gsub("-", ".", subfeaturenames)
## Replace abbreviations
subfeaturenames = gsub("Acc", "Acceleration", subfeaturenames)
subfeaturenames = gsub("Gyro", "Gyroscope", subfeaturenames)
subfeaturenames = gsub("Mag", "Magnitude", subfeaturenames)
subfeaturenames = gsub("Freq", "Frequency", subfeaturenames)
## replace "mean" and "std" by "Mean" and "StandardDeviation"
subfeaturenames = gsub("mean", "Mean", subfeaturenames)
subfeaturenames = gsub("std", "StandardDeviation", subfeaturenames)
setnames(X, names(X)[1:nrow(subfeatures)], subfeaturenames)

## Project Task: 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## by plyr::ddply
# require(plyr)
# system.time(X_mean <- ddply(X, .(Subject, Activity), .fun=function(x){ colMeans(x[, c(1:nrow(subfeatures))]) }))

## by reshape2::dcast
# require(reshape2)
# system.time(X1 <- melt(X, id=c("Subject", "Activity", "Set")))
# system.time( X_mean <- dcast(X1, Subject+Activity ~ variable, mean))

## by aggregate
system.time(X_mean <- aggregate(X[, 1:nrow(subfeatures), with=F], X[, list(Subject, Activity)], mean))

## save clean data sets into files
write.table(X, "X_clean.txt", sep=" ", row.names = FALSE)
write.table(X_mean, "X_mean.txt", sep=" ", row.names = FALSE)

