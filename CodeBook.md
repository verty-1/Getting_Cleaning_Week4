<pre>
Data Dictionary for Coursera Getting & Cleaning Data - Week 4 Project					
Smartphone Activity and Measurement Data					
July 19, 2016				

CodeBook.md
======================================================================================
Historical information about this UCI project is at this location:	
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The source data used for this project is at this location:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
======================================================================================	


VARIABLE NAME	VARIABLE DESCRIPTION				
					
					
activity	Grouping character variable for categorizing the physical activity of the subject 				
		6 character values: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS				
					
subjectid	Grouping integer variable identifying the subject volunteer within an age bracket of 19-48 years				
		30 integer values: from 1 to 30				
					
		There are 79 variables with numeric data				
		Per the UCI source documentation, results are normalized and therefore dimensionless				
		Mean and standard deviation values of measurements were extracted from the UCI source				
		The measurement variable name takes the form "prefix"+"measurement"_"axis (if applicable)"_"statistical metric"				
		The measurement variables from the UCI source were renamed to be consistent and valid for [R] scripting				
		Some of the measurement variable syntax from the UCI source was retained to avoid any misinterpretation				

		Desciption of the variable name elements follow:				
			"prefix"				
			"t" prefix designates time domain signals"				
			"f" prefix designates frequency domain signals"				
			Note: ""angle"" was not included since mean and standard deviations did not apply"				
		"measurement"				
			"Acc" designates accelerometer device"				
			"Gyro" designates gyroscope device"				
			"Gravity" designates gravitional component of measurement"				
			"Body" designates gravitional component of measurement"				
			"Jerk" indicates acceleration and angular velocity were derived in time to obtain Jerk signals"				
			"Mag" is magnitude of the three-dimensional signals calculated using the Euclidean norm "				
		"axis"				
			"X" cartesian axis of smartphone"				
			"Y" cartesian axis of smartphone"				
			"Z" cartesian axis of smartphone"				
		"statistical metric"				
			"mean" is mean value"				
			"meanFreq" is weighted average of the frequency components to obtain a mean frequency"				
			"std" is standard deviation"				
					
tBodyAcc_X_mean			"Numeric values, see description above"				
tBodyAcc_Y_mean			"Numeric values, see description above"				
tBodyAcc_Z_mean			"Numeric values, see description above"				
tBodyAcc_X_std			"Numeric values, see description above"				
tBodyAcc_Y_std			"Numeric values, see description above"				
tBodyAcc_Z_std			"Numeric values, see description above"				
tGravityAcc_X_mean		"Numeric values, see description above"				
tGravityAcc_Y_mean		"Numeric values, see description above"				
tGravityAcc_Z_mean		"Numeric values, see description above"				
tGravityAcc_X_std		"Numeric values, see description above"				
tGravityAcc_Y_std		"Numeric values, see description above"				
tGravityAcc_Z_std		"Numeric values, see description above"				
tBodyAccJerk_X_mean		"Numeric values, see description above"				
tBodyAccJerk_Y_mean		"Numeric values, see description above"				
tBodyAccJerk_Z_mean		"Numeric values, see description above"				
tBodyAccJerk_X_std		"Numeric values, see description above"				
tBodyAccJerk_Y_std		"Numeric values, see description above"				
tBodyAccJerk_Z_std		"Numeric values, see description above"				
tBodyGyro_X_mean		"Numeric values, see description above"				
tBodyGyro_Y_mean		"Numeric values, see description above"				
tBodyGyro_Z_mean		"Numeric values, see description above"				
tBodyGyro_X_std			"Numeric values, see description above"				
tBodyGyro_Y_std			"Numeric values, see description above"				
tBodyGyro_Z_std			"Numeric values, see description above"				
tBodyGyroJerk_X_mean		"Numeric values, see description above"				
tBodyGyroJerk_Y_mean		"Numeric values, see description above"				
tBodyGyroJerk_Z_mean		"Numeric values, see description above"				
tBodyGyroJerk_X_std		"Numeric values, see description above"				
tBodyGyroJerk_Y_std		"Numeric values, see description above"				
tBodyGyroJerk_Z_std		"Numeric values, see description above"				
tBodyAccMag_mean		"Numeric values, see description above"				
tBodyAccMag_std			"Numeric values, see description above"				
tGravityAccMag_mean		"Numeric values, see description above"				
tGravityAccMag_std		"Numeric values, see description above"				
tBodyAccJerkMag_mean		"Numeric values, see description above"				
tBodyAccJerkMag_std		"Numeric values, see description above"				
tBodyGyroMag_mean		"Numeric values, see description above"				
tBodyGyroMag_std		"Numeric values, see description above"				
tBodyGyroJerkMag_mean		"Numeric values, see description above"				
tBodyGyroJerkMag_std		"Numeric values, see description above"				
fBodyAcc_X_mean			"Numeric values, see description above"				
fBodyAcc_Y_mean			"Numeric values, see description above"				
fBodyAcc_Z_mean			"Numeric values, see description above"				
fBodyAcc_X_std			"Numeric values, see description above"				
fBodyAcc_Y_std			"Numeric values, see description above"				
fBodyAcc_Z_std			"Numeric values, see description above"				
fBodyAcc_X_meanFreq		"Numeric values, see description above"				
fBodyAcc_Y_meanFreq		"Numeric values, see description above"				
fBodyAcc_Z_meanFreq		"Numeric values, see description above"				
fBodyAccJerk_X_mean		"Numeric values, see description above"				
fBodyAccJerk_Y_mean		"Numeric values, see description above"				
fBodyAccJerk_Z_mean		"Numeric values, see description above"				
fBodyAccJerk_X_std		"Numeric values, see description above"				
fBodyAccJerk_Y_std		"Numeric values, see description above"				
fBodyAccJerk_Z_std		"Numeric values, see description above"				
fBodyAccJerk_X_meanFreq		"Numeric values, see description above"				
fBodyAccJerk_Y_meanFreq		"Numeric values, see description above"				
fBodyAccJerk_Z_meanFreq		"Numeric values, see description above"				
fBodyGyro_X_mean		"Numeric values, see description above"				
fBodyGyro_Y_mean		"Numeric values, see description above"				
fBodyGyro_Z_mean		"Numeric values, see description above"				
fBodyGyro_X_std			"Numeric values, see description above"				
fBodyGyro_Y_std			"Numeric values, see description above"				
fBodyGyro_Z_std			"Numeric values, see description above"				
fBodyGyro_X_meanFreq		"Numeric values, see description above"				
fBodyGyro_Y_meanFreq		"Numeric values, see description above"				
fBodyGyro_Z_meanFreq		"Numeric values, see description above"				
fBodyAccMag_mean		"Numeric values, see description above"				
fBodyAccMag_std			"Numeric values, see description above"				
fBodyAccMag_meanFreq		"Numeric values, see description above"				
fBodyBodyAccJerkMag_mean	"Numeric values, see description above"				
fBodyBodyAccJerkMag_std		"Numeric values, see description above"				
fBodyBodyAccJerkMag_meanFreq	"Numeric values, see description above"				
fBodyBodyGyroMag_mean		"Numeric values, see description above"				
fBodyBodyGyroMag_std		"Numeric values, see description above"				
fBodyBodyGyroMag_meanFreq	"Numeric values, see description above"				
fBodyBodyGyroJerkMag_mean	"Numeric values, see description above"				
fBodyBodyGyroJerkMag_std	"Numeric values, see description above"				
fBodyBodyGyroJerkMag_meanFreq	"Numeric values, see description above"				
</pre>