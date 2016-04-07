# Getting-and-Cleaning-Data-Course-project
Final project of the course Gettind and Cleaning Data

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
##PROJECT DESCRIPTION
The R script, run_analysis.R, does the following on the UCI HAR Dataset download from 
###https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
*1.Merges the training and the test sets to create one data set.
*2.Extracts only the measurements on the mean and standard deviation 
for each measurement.
*3.Uses descriptive activity names to name the activities in the data set
*4.Appropriately labels the data set with descriptive variable names.
*5.From the data set in step 4, creates a second, independent tidy data set with 
the average of each variable for each activity and each subject.

## PROJECT SUMMARY
The following is a sumary of the activities performed to achieve the steps 1-5 *Download the dataset if it does not already exist in the working directory
*Set the working directory
*Load the  raw data from file UCI HAR Dataset and assign column names
*Create the trainingData table and the testData table by merging the train data set and the test data set respectively
*Merge the two data sets.
*Create a logical vector to keep the columns with mean and standart deviation.
* Use the logical vector to obtain a new table with the columns desired.
*Give  descriptive names to the activities using the activity_labels table.
*Converts the activity and subject columns into factors.
*Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.
*The end result is shown in the file tidy.txt.

## WHAT YOU FIND IN THIS REPOSITORY

*CodeBook.md: information about raw and tidy data set and elaboration made to transform them
*README.md: this file
*run_analysis.R: R script to transform raw data set in a tidy one
tidy.txt
