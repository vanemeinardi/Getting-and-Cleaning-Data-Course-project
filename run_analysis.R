#This script will do the following steps on the UCI HAR Dataset,
#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation 
#for each measurement.
#3.#Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names.
#5.From the data set in step 4, creates a second, independent tidy data set with 
#the average of each variable for each activity and each subject.

###################################################################
# 1. Merge the training and the test sets to create one data set.
###################################################################

#First of all we will set the working directory
setwd("C:/Users/vanesameinardi/Desktop/DataScience Specialization/UCI HAR Dataset")

#Then load raw data from file UCI HAR Dataset and assign column names. 
features <- read.table("./features.txt", colClasses = c("character"))
activityType <- read.table("./activity_labels.txt", col.names = c("ActivityId", "Activity"))


#Load raw data from the train dataset on UCI HAR Dataset and assign column names. 
xTrain <- read.table("./train/x_train.txt", col.names = features[,2])
yTrain <- read.table("./train/y_train.txt", col.names= "ActivityId")
subjectTrain <- read.table("./train/subject_train.txt", col.names = "SubjectId" )

# Create the trainingData table by merging yTrain, subjectTrain, and xTrain by column.
trainingData = cbind(yTrain,subjectTrain,xTrain)

#Load raw data from test dataset and assign column names.
xTest <- read.table("./test/x_test.txt", col.names = features[,2])
yTest <- read.table("./test/y_test.txt", col.names= "ActivityId")
subjectTest <- read.table("./test/subject_test.txt", col.names = "SubjectId" )

# Create the testData table by merging the xTest, yTest and subjectTest data by column.
testData = cbind(yTest,subjectTest,xTest)

#Merge the trainingData and the testData to creat one table by row.
data <- rbind(trainingData, testData)

#############################################################################
#2.Extracts only the measurements on the mean and standard deviation for each 
#measurement.
#############################################################################

#Create a logical vector that contains true for the columns that have the word M[m]ean,std, 
#SubjectId or ActivityId.
#in their name.
logicalvector=(grepl("[Mm]ean|[Ss]td|SubjectId|ActivityId", names(data), ignore.case = FALSE))

#Subset the data table based when the logical vector is TRUE to obtain the column desired
data <- data[logicalvector == TRUE]

#3.Uses descriptive activity names to name the activities in the data set. 
#Merge the activityType table with the data table by the column "activityId" to give 
# descriptive names to the activities

data <- merge(data, activityType, by = "ActivityId", all.x = TRUE)


#######################################################################
# 4. Appropriately label the data set with descriptive activity names. 
#######################################################################

# Create a vector for the column names from the data, which will be used
# to improving the variable names of the columns.
colNames  = colnames(data) 

# Improving the variable names
colNames <- gsub("\\.", "", colNames)
colNames <-  gsub("^(t)","Time",colNames)
colNames<- gsub("mean","Mean",colNames)
colNames<- gsub("std","StDev",colNames)
colNames <-  gsub("^(f)","Freq",colNames)
colNames <- gsub("angle","Angle",colNames)
colNames <- gsub("gravity","Gravity",colNames)
 
#Update colnames
colnames(data) = colNames

#################################################################################
#5.From the data set in step 4, creates a second, independent tidy data set with 
#the average of each variable for each activity and each subject.
#################################################################################
#Remove column ActivityId with select. Load package dplyr
library(dplyr)
data <- select(data , -ActivityId)
#Convert in factor Activity and SubjectId to use in melt function
data$Activity <- factor(data$Activity)
data$SubjectId <- as.factor(data$SubjectId)
library(reshape2)
datamelt <- melt(data, id = c("SubjectId", "Activity"))
datamean <- dcast(datamelt, SubjectId + Activity ~ variable, mean)

#Finally write a table with the tidy data.
write.table(datamean, "tidy.txt", row.names = FALSE, quote = FALSE)
