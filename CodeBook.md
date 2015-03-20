# Code Book

## Original Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

- [Source Data Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
- [Detailed Description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Process

Our data set is the result of mergin the training and the test sets, extracting mean and standard deviation measurements and generating the average of each variable for each activity and each subject.
We have followed this steps:

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Result Data Set

First two columns correspond to Subject and Activity variables:
 - Subject: Subject ID (integer)
 - Activity: Activity name (character) with this possible values:
  - Walking
  - Walking Upstairs
  - Walking Downstairs
  - Sitting
  - Standing
  - Laying

Next columns corresponds to the measurements selected:
- Time domain body acceleration mean along X, Y, and Z:
  - tBodyAcc.mean.X
  - tBodyAcc.mean.Y
  - tBodyAcc.mean.Z
- Time domain body acceleration standard deviation along X, Y, and Z:
  - tBodyAcc.std.X
  - tBodyAcc.std.Y
  - tBodyAcc.std.Z
- Time domain gravity acceleration mean along X, Y, and Z:
  - tGravityAcc.mean.X
  - tGravityAcc.mean.Y
  - tGravityAcc.mean.Z
- Time domain gravity acceleration standard deviation along X, Y, and Z:
  - tGravityAcc.std.X
  - tGravityAcc.std.Y
  - tGravityAcc.std.Z
- Time domain body jerk mean along X, Y, and Z:
  - tBodyAccJerk.mean.X
  - tBodyAccJerk.mean.Y
  - tBodyAccJerk.mean.Z
- Time domain body jerk standard deviation along X, Y, and Z:  
  - tBodyAccJerk.std.X
  - tBodyAccJerk.std.Y
  - tBodyAccJerk.std.Z
- Time domain gyroscope mean along X, Y, and Z:
  - tBodyGyro.mean.X
  - tBodyGyro.mean.Y
  - tBodyGyro.mean.Z
- Time domain gyroscope standard deviation along X, Y, and Z:
  - tBodyGyro.std.X
  - tBodyGyro.std.Y
  - tBodyGyro.std.Z
- Time domain gyroscope jerk mean along X, Y, and Z:
  - tBodyGyroJerk.mean.X
  - tBodyGyroJerk.mean.Y
  - tBodyGyroJerk.mean.Z
- Time domain gyroscope jerk standard deviation along X, Y, and Z:
  - tBodyGyroJerk.std.X
  - tBodyGyroJerk.std.Y
  - tBodyGyroJerk.std.Z
- Time domain body acceleration magnitude mean:
  - tBodyAccMag.mean
- Time domain body acceleration magnitude standard deviation:
  - tBodyAccMag.std
- Time domain gravity acceleration magnitude mean:
  - tGravityAccMag.mean
- Time domain gravity acceleration magnitude standard deviation:
  - tGravityAccMag.std
- Time domain body jerk magnitude mean:
  - tBodyAccJerkMag.mean
- Time domain body jerk magnitude standard deviation:
  - tBodyAccJerkMag.std
- Time domain gyroscope magnitude mean:
  - tBodyGyroMag.mean
- Time domain gyroscope magnitude standard deviation:
  - tBodyGyroMag.std
- Time domain gyroscope jerk magnitude mean:
  - tBodyGyroJerkMag.mean
- Time domain gyroscope jerk magnitude standard deviation:
  - tBodyGyroJerkMag.std
- Frequency domain body acceleration mean along X, Y, and Z:
  - fBodyAcc.mean.X
  - fBodyAcc.mean.Y
  - fBodyAcc.mean.Z
- Frequency domain body acceleration standard deviation along X, Y, and Z:
  - fBodyAcc.std.X
  - fBodyAcc.std.Y
  - fBodyAcc.std.Z
- Frequency domain body jerk mean along X, Y, and Z:
  - fBodyAccJerk.mean.X
  - fBodyAccJerk.mean.Y
  - fBodyAccJerk.mean.Z
- Frequency domain body jerk standard deviation along X, Y, and Z:
  - fBodyAccJerk.std.X
  - fBodyAccJerk.std.Y
  - fBodyAccJerk.std.Z
- Frequency domain gyroscope mean along X, Y, and Z:
  - fBodyGyro.mean.X
  - fBodyGyro.mean.Y
  - fBodyGyro.mean.Z
- Frequency domain gyroscope standard deviation along X, Y, and Z:
  - fBodyGyro.std.X
  - fBodyGyro.std.Y
  - fBodyGyro.std.Z
- Frequency domain body acceleration magnitude mean:
  - fBodyAccMag.mean
- Frequency domain body acceleration magnitude standard deviation:
  - fBodyAccMag.std
- Frequency domain body jerk magnitude mean:
  - fBodyBodyAccJerkMag.mean
- Frequency domain body jerk magnitude standard deviation:
  - fBodyBodyAccJerkMag.std
- Frequency domain gyroscope magnitude mean:
  - fBodyBodyGyroMag.mean
- Frequency domain gyroscope magnitude standard deviation:
  - fBodyBodyGyroMag.std
- Frequency domain gyroscope jerk magnitude mean:
  - fBodyBodyGyroJerkMag.mean
- Frequency domain gyroscope jerk magnitude standard deviation:
  - fBodyBodyGyroJerkMag.std
