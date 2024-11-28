# Getting and Cleaning Data - Course Project - Codebook

## Data Source

This project uses data collected from the embedded accelerometers and gyroscopes in the Samsung Galaxy S smartphone. _run_analyis.R_ requires the data to be downloaded and unzipped in the working directory.

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data can be downloaded here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## _summary_data.txt_
### Analysis Steps
1. Read in activity and feature names from the data.
2. Extract only the mean and standard deviations of each measurement.
3. Read both the train and test data, providing descriptive names to the variables.
4. Merge the training and the test sets to create one data set.
5. Give descriptive names to the activities in the data set.
6. Tidy up variable names.
7. Create a second, independent tidy data set (_summary_data.txt_) with the average of each variable for each activity and each subject.

### Variables
_"subject"_ - ID of the subject who performed the activity. Its range is from 1 to 30.

_"activity"_ - The activity the subject performed. One of {WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING}

The other variables, with names shown at the bottom of the page, are the averages of each variable in the original dataset for the given activity and subject.

- Each variable starts with a 't' or 'f' to denote time domain signals and frequency domain signals, respectively.
- The rest of the variable name up until the first '.' indicates the signal that was read.
- 'mean' and 'std' indicates either the mean value or standard deviation of the signal measurement
- For most variables, after a second '.', a letter 'X', 'Y' or 'Z' follows to denote 3-axial signals in the X, Y and Z directions.

_"tBodyAcc.mean.X" "tBodyAcc.mean.Y" "tBodyAcc.mean.Z" "tBodyAcc.std.X" "tBodyAcc.std.Y" "tBodyAcc.std.Z" "tGravityAcc.mean.X" "tGravityAcc.mean.Y" "tGravityAcc.mean.Z" "tGravityAcc.std.X" "tGravityAcc.std.Y" "tGravityAcc.std.Z" "tBodyAccJerk.mean.X" "tBodyAccJerk.mean.Y" "tBodyAccJerk.mean.Z" "tBodyAccJerk.std.X" "tBodyAccJerk.std.Y" "tBodyAccJerk.std.Z" "tBodyGyro.mean.X" "tBodyGyro.mean.Y" "tBodyGyro.mean.Z" "tBodyGyro.std.X" "tBodyGyro.std.Y" "tBodyGyro.std.Z" "tBodyGyroJerk.mean.X" "tBodyGyroJerk.mean.Y" "tBodyGyroJerk.mean.Z" "tBodyGyroJerk.std.X" "tBodyGyroJerk.std.Y" "tBodyGyroJerk.std.Z" "tBodyAccMag.mean" "tBodyAccMag.std" "tGravityAccMag.mean" "tGravityAccMag.std" "tBodyAccJerkMag.mean" "tBodyAccJerkMag.std" "tBodyGyroMag.mean" "tBodyGyroMag.std" "tBodyGyroJerkMag.mean" "tBodyGyroJerkMag.std" "fBodyAcc.mean.X" "fBodyAcc.mean.Y" "fBodyAcc.mean.Z" "fBodyAcc.std.X" "fBodyAcc.std.Y" "fBodyAcc.std.Z" "fBodyAccJerk.mean.X" "fBodyAccJerk.mean.Y" "fBodyAccJerk.mean.Z" "fBodyAccJerk.std.X" "fBodyAccJerk.std.Y" "fBodyAccJerk.std.Z" "fBodyGyro.mean.X" "fBodyGyro.mean.Y" "fBodyGyro.mean.Z" "fBodyGyro.std.X" "fBodyGyro.std.Y" "fBodyGyro.std.Z" "fBodyAccMag.mean" "fBodyAccMag.std" "fBodyAccJerkMag.mean" "fBodyAccJerkMag.std" "fBodyGyroMag.mean" "fBodyGyroMag.std" "fBodyGyroJerkMag.mean" "fBodyGyroJerkMag.std"_
