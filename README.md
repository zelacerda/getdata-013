# Getting and Cleaning Data Course Project

This repo contains a script to prepare a tidy data set from the experiment *Human Activity Recognition Using Smartphones Dataset* (more info about the project are [available here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)).

All raw data can be obtained here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## How to use the script

1. Download and unzip the data into a new directory;
2. Copy **run_analysis.R** file to the main directory;
3. Run the script using R or RStudio with the following command:

```R
source("run_analysis.R")
```

The script code is commented, and basically permform the following tasks:

1. Merges training and test sets for measures, activities and subjects data;
2. Filter data to only mean and standatd deviation measures;
3. Apply descriptive names to the variables and activities;
4. Export the tidy data to a new file named **result.txt**.
 
## Code book describing the variables

The result table has 68 variables (columns) and each row represents the mean of total measures for each subject and activity. Below are the description of each one:

**subject** (number from 1 to 30) - Each number represent a volunteer of the experiment.

**activity** (type of activity) - Each person performed six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,   SITTING, STANDING and LAYING.

**tBodyAcc-mean()-X** - Time body linear acceleration for X axis - mean value

**tBodyAcc-mean()-Y** - Time body linear acceleration for Y axis - mean value

**tBodyAcc-mean()-Z** - Time body linear acceleration for Z axis - mean value

**tBodyAcc-std()-X** - Time body linear acceleration for X axis - standard deviation

**tBodyAcc-std()-Y** - Time body linear acceleration for Y axis - standard deviation

**tBodyAcc-std()-Z** - Time body linear acceleration for Z axis - standard deviation

**tGravityAcc-mean()-X** - Time gravity linear acceleration for X axis - mean value

**tGravityAcc-mean()-Y** - Time gravity linear acceleration for Y axis - mean value

**tGravityAcc-mean()-Z** - Time gravity linear acceleration for Z axis - mean value

**tGravityAcc-std()-X** - Time gravity linear acceleration for X axis - standard deviation

**tGravityAcc-std()-Y** - Time gravity linear acceleration for Y axis - standard deviation

**tGravityAcc-std()-Z** - Time gravity linear acceleration for Z axis - standard deviation

**tBodyAccJerk-mean()-X** - Time body linear acceleration for X axis - mean value

**tBodyAccJerk-mean()-Y** - Time body linear acceleration for Y axis - mean value

**tBodyAccJerk-mean()-Z** - Time body linear acceleration for Z axis - mean value

**tBodyAccJerk-std()-X** - Time body linear acceleration for X axis - standard deviation

**tBodyAccJerk-std()-Y** - Time body linear acceleration for Y axis - standard deviation

**tBodyAccJerk-std()-Z** - Time body linear acceleration for Z axis - standard deviation

**tBodyGyro-mean()-X** - Time body angular velocity for X axis - mean value

**tBodyGyro-mean()-Y** - Time body angular velocity for Y axis - mean value

**tBodyGyro-mean()-Z** - Time body angular velocity for Z axis - mean value

**tBodyGyro-std()-X** - Time body angular velocity for X axis - standard deviation

**tBodyGyro-std()-Y** - Time body angular velocity for Y axis - standard deviation

**tBodyGyro-std()-Z** - Time body angular velocity for Z axis - standard deviation

**tBodyGyroJerk-mean()-X** - Time body angular velocity Jerk signals for X axis - mean value

**tBodyGyroJerk-mean()-Y** - Time body angular velocity Jerk signals for Y axis - mean value

**tBodyGyroJerk-mean()-Z** - Time body angular velocity Jerk signals for Z axis - mean value

**tBodyGyroJerk-std()-X** - Time body angular velocity Jerk signals for X axis - standard deviation

**tBodyGyroJerk-std()-Y** - Time body angular velocity Jerk signals for Y axis - standard deviation

**tBodyGyroJerk-std()-Z** - Time body angular velocity Jerk signals for Z axis - standard deviation

**tBodyAccMag-mean()** - Time body linear acceleration magnitude - mean value

**tBodyAccMag-std()** - Time body linear acceleration magnitude - standard deviation

**tGravityAccMag-mean()** - Time gravity linear acceleration magnitude - mean value

**tGravityAccMag-std()** - Time gravity linear acceleration magnitude - standard deviation

**tBodyAccJerkMag-mean()** - Time body linear acceleration Jerk signals magnitude - mean value

**tBodyAccJerkMag-std()** - Time body linear acceleration Jerk signals magnitude - standard deviation

**tBodyGyroMag-mean()** - Time body angular velocity magnitude - mean value

**tBodyGyroMag-std()** - Time body angular velocity magnitude - standard deviation

**tBodyGyroJerkMag-mean()** - Time body angular velocity Jerk signals magnitude - mean value

**tBodyGyroJerkMag-std()** - Time body angular velocity Jerk signals magnitude - standard deviation

**fBodyAcc-mean()-X** - Fast Fourier Transform body linear acceleration for X axis - mean value

**fBodyAcc-mean()-Y** - Fast Fourier Transform body linear acceleration for Y axis - mean value

**fBodyAcc-mean()-Z** - Fast Fourier Transform body linear acceleration for Z axis - mean value

**fBodyAcc-std()-X** - Fast Fourier Transform body linear acceleration for X axis - standard deviation

**fBodyAcc-std()-Y** - Fast Fourier Transform body linear acceleration for Y axis - standard deviation

**fBodyAcc-std()-Z** - Fast Fourier Transform body linear acceleration for Z axis - standard deviation

**fBodyAccJerk-mean()-X** - Fast Fourier Transform body linear acceleration Jerk signals for X axis - mean value

**fBodyAccJerk-mean()-Y** - Fast Fourier Transform body linear acceleration Jerk signals for Y axis - mean value

**fBodyAccJerk-mean()-Z** - Fast Fourier Transform body linear acceleration Jerk signals for Z axis - mean value

**fBodyAccJerk-std()-X** - Fast Fourier Transform body linear acceleration Jerk signals for X axis - standard deviation

**fBodyAccJerk-std()-Y** - Fast Fourier Transform body linear acceleration Jerk signals for Y axis - standard deviation

**fBodyAccJerk-std()-Z** - Fast Fourier Transform body linear acceleration Jerk signals for Z axis - standard deviation

**fBodyGyro-mean()-X** - Fast Fourier Transform body angular velocity for X axis - mean value

**fBodyGyro-mean()-Y** - Fast Fourier Transform body angular velocity for Y axis - mean value

**fBodyGyro-mean()-Z** - Fast Fourier Transform body angular velocity for Z axis - mean value

**fBodyGyro-std()-X** - Fast Fourier Transform body angular velocity for X axis - standard deviation

**fBodyGyro-std()-Y** - Fast Fourier Transform body angular velocity for Y axis - standard deviation

**fBodyGyro-std()-Z** - Fast Fourier Transform body angular velocity for Z axis - standard deviation

**fBodyAccMag-mean()** - Fast Fourier Transform body linear acceleration magnitude - mean value

**fBodyAccMag-std()** - Fast Fourier Transform body linear acceleration magnitude - standard deviation

**fBodyBodyAccJerkMag-mean()** - Fast Fourier Transform body linear acceleration Jerk signals magnitude - mean value

**fBodyBodyAccJerkMag-std()** - Fast Fourier Transform body linear acceleration Jerk signals magnitude - standard deviation

**fBodyBodyGyroMag-mean()** - Fast Fourier Transform body angular velocity magnitude - mean value

**fBodyBodyGyroMag-std()** - Fast Fourier Transform body angular velocity magnitude - standard deviation

**fBodyBodyGyroJerkMag-mean()** - Fast Fourier Transform body angular velocity magnitude - mean value

**fBodyBodyGyroJerkMag-std()** - Fast Fourier Transform body angular velocity magnitude - standard deviation

