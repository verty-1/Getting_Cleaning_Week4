## Coursera Getting & Cleaning Data Week 4 Project
## Smartphone Activity and Measurement Data
##
## run_analysis.R - Creates tidy data for UCI smartphone dataset described here:
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
##
## Instructions to run script:
##      Set working directory to the "UCI HAR Dataset" folder
##      Script requires dplyr library
## Script output:  
##      The first tidy data filename is "tidy_data_1.txt" (mean and std data)
##      The second tidy data filename is "tidy_data_2.txt" (group average results)
##      The code book for the script output is CodeBook.md on the repository
## Instructions for peer review grading:
##      The second (final) tidy datset is read using the command
##      read.table("./tidy_data_2.txt", header = TRUE)
##
##
## Read feature and activity descriptors that apply to both sets
library(dplyr)
##
features <- read.table("./features.txt")
a_labels <- read.table("./activity_labels.txt")
##
## Read TEST DATASET and assemble:
        ## Read the raw data and add headers
        rdata_test <- read.table("./test/X_test.txt")
                names(rdata_test) <- features[[2]]
        ## Read the test subjects and add a header
        subject_test <- read.table("./test/subject_test.txt")
                names(subject_test) <- "subjectid"
        ## Read the activities, decode and add a header
        coded_test <- read.table("./test/y_test.txt")
                names(coded_test) <- "activityid"        
        m <- length(coded_test[[1]])
        activity_test <- data.frame(matrix(ncol = 1))
                names(activity_test) <- "activity"
        group_test <- data.frame(matrix(ncol = 1)) ## Not needed for project 
                names(group_test) <- "group"        
        for(index in 1:m) {
                transform <- coded_test[index,1]
                activity_test[index,1] <- as.character(a_labels[transform,2]) 
                ## Assign the group
                group_test[index,1] <- "TEST"
                }
        ## Assemble into a single data frame
        test <- cbind(activity_test,subject_test,rdata_test)
##
## Read TRAIN DATASET and assemble:         
        ## Read the raw data and add headers
        rdata_train <- read.table("./train/X_train.txt")
                names(rdata_train) <- features[[2]]
        ## Read the train subjects and add a header
        subject_train <- read.table("./train/subject_train.txt")
                names(subject_train) <- "subjectid"
        ## Read the activities, decode and add a header
        coded_train <- read.table("./train/y_train.txt")
                names(coded_train) <- "activityid"
        m <- length(coded_train[[1]])
        activity_train <- data.frame(matrix(ncol = 1))
                names(activity_train) <- "activity"
        group_train <- data.frame(matrix(ncol = 1)) ## Not needed for project
                names(group_train) <- "group"        
        for(index in 1:m) {
                transform <- coded_train[index,1]
                activity_train[index,1] <- as.character(a_labels[transform,2]) 
                ## Assign the group
                group_train[index,1] <- "TRAIN"
                }
        train <- cbind(activity_train,subject_train,rdata_train)
## Assemble test and train datasets into a single data frame
        df0 <- rbind(test, train)
##        
## Coerce valid column names, select columns containing mean and std values
## Exclude "angle" measurments that refer to means but are not mean values             
        valid_column_names <- make.names(names=names(df0), unique=TRUE, allow_=TRUE)
        names(df0) <- valid_column_names
        df1 <- select(df0, matches("(group|activityid|activity|subjectid|mean|std)", 
                ignore.case = TRUE), -matches("angle")) 
## Create more descriptive names for measurements
## Remove extra ... , all variables end with mean, std, or meanFreq        
        n_list <- strsplit(names(df1), "\\.+")              
        n_vector <- character()
        for(index in 1:length(n_list)) {
                if(!is.na(n_list[[index]][3])) {
                        n_vector[index] <- paste(n_list[[index]][1],
                        n_list[[index]][3],n_list[[index]][2], sep = "_") 
                } else if(!is.na(n_list[[index]][2])) {
                        n_vector[index] <- paste(n_list[[index]][1],
                        n_list[[index]][2], sep = "_")
                } else {
                        n_vector[index] <- n_list[[index]][1]
                }        
        }
        names(df1) <- n_vector
# Write the first tidy data containing mean and std values
        write.table(df1, file="tidy_data_1.txt", row.names = FALSE, sep="\t")
## Create groups for activity and subjectid, the find average values
## Need to consider that mean function will fail on character data, but 
## this works only because activity is defined as a grouping variable       
        df1 <- group_by(df1, activity, subjectid) 
        df2 <- summarize_each(df1, funs(mean))   
##        
## Write the second wide-form tidy data (final result) containing group averages       
        write.table(df2, file="tidy_data_2.txt", row.names = FALSE, sep="\t")
## End



