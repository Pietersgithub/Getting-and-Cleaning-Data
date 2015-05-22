# Getting-and-Cleaning-Data
Repo for the work on Getting and Cleaning Data and the course project

The dataset being used is: Human Activity Recognition Using Smartphones

Files
The code takes for granted all the data is present in the same folder, un-compressed and without names altered.

CodeBook.md  describes the variables, the data, and any transformations or work that was performed to clean up the data.

run_analysis.R  contains all the code to perform the download unzipping and storing of files. Furthermore it contains the code to execute the steps described in the project. They can be launched in RStudio by just importing the file.

The output of the 5th step is called  averages.txt , and uploaded in the course project's form.

melt_data_and_write_tidy_set
Purpose: Performs melt data, casting back to tidy data format, and then writing the data out to a text file

Parameters:  extracted_mean_std_data_set : a data table containing the training set and test set data and 3 additional columns for subject, activity, and activity id but has already extracted out the mean and std columns  path_to_tidyset_file : a character vector that indicates the path to write the tidy set file to 
