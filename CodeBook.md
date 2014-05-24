Code Book for Getting and Cleaning Data Project
========================================================

Tidy.txt is produced using the R code run_analysis.R.

The original data from which Tidy.txt was produced, contains measurements taken by a smartphone(Samsung Galaxy S II) of 30 subjects, doing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). 

There is training data of 7352 observations and test data of 2947 observations, which when merged together yield 10299 observations.  The measurements record 561 variables as encoded by the features.txt file. These variables as well as a column indicating the subject and a column indicating the activity being performed yield a data frame of 7352 observations and 563 columns.

The Tidy.txt data set extracts each of the features pertaining to the mean and standard deviation, of which there are 78.  Note this also includes the meanFreq() variables.  

The features are:

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

Note that for each of the -XYZ names, there is one variable pertaining to X, one for Y, and one for Z for both the mean and the standard deviation, resulting in 6 features for each name, resulting in $8*6=48$ features.  For the names ending in Mag there are two variables, one for mean and one for standard deviation, resulting in $9*2=18$ features.  Finally, the names:

- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

Each of these names have a meanfreq variable, adding an additional 12 features.  Thus, there are 78 features in the Tidy data set.

The average of each of these 78 features is computed for each subject and each activity, resulting in 180=30subjects * 6 activities, distinct groups.

Then Tidy.txt is a data frame with 180 rows corresponding to each group and 80 columns.

- 1st Column: subject, can be any value from 1 to 30 indicating the subject of interest

- 2nd Column: activityid, indicates the activity being performed from the list (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

- 3rd-80th Columns: the average of the 78 features for each subject and each activity.
