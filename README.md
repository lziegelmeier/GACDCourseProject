GACDCourseProject
=================

Course Project for Getting and Cleaning Data by Lori Ziegelmeier

As stated on the project description page:

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

 You should create one R script called run_analysis.R that does the following. 

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive activity names. 
    5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 



Using the Samsung Galaxy Data Set, the following is contained in this repo:

1.  run_analysis.R
  R code to read in the data mentioned above, and output a tidy data set Tidy.txt with the features described above. 

This code completes the following steps:
a. Read in both the training and testing data and store x,y,and subject variables
b. Read in the features data
c. Make the headings of the x data the list of features
d. Combine the x,y, and subject train data.  Do the same for the test data
e. Combine the train and test data
f. Extract only the measurements on the means and standard deviation
g. Replace all entries in the activityID column with the descriptions of the activities
h. Replace the column labels with more readable names
i. Create a second tidy with the average of each variable for each activity and each subject for each variable.
j. Create tidy data set.

2.  Tidy.txt
  The tidy data set created using run_analysis.R with comma separated delimiters.
3. codeBook.md
  A description of the variables in this analysis, in particular, in the tidy data set.

