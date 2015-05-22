##You should create one R script called run_analysis.R that does the following.
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3.Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
## create temp file
## not in assignment not implemented
## download zip file
## not in assignment not implemented
## save download date and time
## not in assignment not implemented
## unzip files and store in to directory
## not in assignment not implemented
## remove temp file
## not in assignment not implemented
## set libraries
library(reshape2)
## read files into R
sub_test <- read.table("C:\\Users\\Pieter\\Documents\\Coursera\\Data\\Peer_assignment\\dataset\\UCI HAR Dataset\\test\\subject_test.txt")
X_test <- read.table("C:\\Users\\Pieter\\Documents\\Coursera\\Data\\Peer_assignment\\dataset\\UCI HAR Dataset\\test\\X_test.txt")
y_test <- read.table("C:\\Users\\Pieter\\Documents\\Coursera\\Data\\Peer_assignment\\dataset\\UCI HAR Dataset\\test\\y_test.txt")
sub_train <- read.table("C:\\Users\\Pieter\\Documents\\Coursera\\Data\\Peer_assignment\\dataset\\UCI HAR Dataset\\train\\subject_train.txt")
X_train <- read.table("C:\\Users\\Pieter\\Documents\\Coursera\\Data\\Peer_assignment\\dataset\\UCI HAR Dataset\\train\\X_train.txt")
y_train <- read.table("C:\\Users\\Pieter\\Documents\\Coursera\\Data\\Peer_assignment\\dataset\\UCI HAR Dataset\\train\\y_train.txt")
features <- read.table("C:\\Users\\Pieter\\Documents\\Coursera\\Data\\Peer_assignment\\dataset\\UCI HAR Dataset\\features.txt")
activity_labels <- read.table("C:\\Users\\Pieter\\Documents\\Coursera\\Data\\Peer_assignment\\dataset\\UCI HAR Dataset\\activity_labels.txt")
## Merge all data files
X_test_train <- rbind(X_test, X_train)
y_test_train <- rbind(y_test, y_train)
sub_test_train <- rbind(sub_test, sub_train)
HARUS <- cbind(sub_test_train, y_test_train, X_test_train)
## Clean up
rm(sub_test, X_test, y_test, sub_train, X_train, y_train, X_test_train, y_test_train, sub_test_train)
## Rename to descriptive activity names to name the activities
featureNames <- as.character(features[,2])
newCols <- c("subject", "activity", featureNames)
colnames(HARUS) <- newCols
## Extracting measurements on the mean and standard deviation to new df.
Means <- grep("mean()", colnames(HARUS))
StDevs <- grep("std()", colnames(HARUS))
New_Columns <- c(Means, StDevs)
Sorted_New_Columns <- sort(New_Columns)
DF_Mean_StDev <- HARUS[, c(1,2,Sorted_New_Columns)]
Result <- DF_Mean_StDev[, !grepl("Freq", colnames(DF_Mean_StDev))]
## some removals to free memory
rm(DF_Mean_StDev, HARUS)  
## Create an independent tidy data set with the average of each variable for each activity and each subject from the data set.
DF_avg <- melt( Result, c("subject","activity") )
tidy.DF_avg <- dcast( DF_avg, ... ~ variable, mean )
write.table( tidy.DF_avg, "C:\\Users\\Pieter\\Documents\\Coursera\\Data\\Peer_assignment\\New_tidy_DF.txt", row.names = F )
