<pre>
README for Coursera Getting & Cleaning Data - Week 4 Project					
Smartphone Activity and Measurement Data					
July 19, 2016				

README.md for script 'run_analysis.R'
======================================================================================
Historical information about this UCI project is at this location:	
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The source data used for this project is at this location:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
======================================================================================	

PURPOSE:

The source data for the smartphone accelerometer and gyroscope measurements require
conditioning for analysis in [R].  The purpose of the script 'run_analysis.R' is to:

1. Create a data frame extracting the means and standard deviations for the measurements
   and create tidy data for [R] analysis.  

2. Calculate the average of each measurement variable for each activity and each 
   subject and report as a tidy data frame.


======================================================================================

FILES:

- 'README.txt' : This file.

- 'CodeBook.md' : Data dictionary describing grouping variables and measurement variables.

- 'features_info.txt': Shows information about the variables used on the feature vector.

THE FOLLOWING FILES ARE IN THE PATH SHOWN RELATIVE TO THE [R] WORKING DIRECTORY

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'test/subject_test.txt': Each row identifies the subject who performed the activity

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity 

- 'run_analysis.R' : Script that produces the tidy data frames and tab delimited .txt files


======================================================================================	

CLEANING AND TRANSFORMATION:

1. The "test" and "train" datasets were assembled, and then combined into a single data frame
2. The "activityid" was decoded, and resulting plain english "activity" descriptors 
   substituted in their place in the data frame.
3. The source data column names were invalid for[R] dataframe operations.  The names 
   were coerced to valid names, and then transformed into a new, consistent
   syntax documented in "CodeBook.md".  Some of the measurement variable syntax from 
   the UCI source was retained to avoid any misinterpretation of the measurement
   variable.
4. Measurement variables pertaining to the mean, meanFreq, and std statistical metrics
   were extracted.  Results were written to data filename is "tidy_data_1.txt".
5. Group variables "activity" and "subjectid" were defined using the group_by
   function in the dplyr package.  Average value summary statistics were calculated
   for each activity and subject combination.  The results were reported as a 
   wide-form tidy data frame, and written as "tidy_data_2.txt"	  

======================================================================================	

NOTES:

Instructions to run script:
      Set working directory to the "UCI HAR Dataset" folder
      Script requires dplyr library
Script output:  
      The first tidy data filename is "tidy_data_1.txt" (mean and std data)
      The second tidy data filename is "tidy_data_2.txt" (group average results)
      The code book for the script output is CodeBook.md on the repository
Instructions for peer review grading:
      The second (final) tidy datset is read using the command
      read.table("./tidy_data_2.txt", header = TRUE)
END
</pre>