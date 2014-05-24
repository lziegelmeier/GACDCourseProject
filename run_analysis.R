#Creates one R script called run_analysis.R that does the following. 

#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive activity names. 
#5. Creates a second, independent tidy data set with the average of each variable for each 
#activity and each subject. 

##Read in Train data
setwd("C:/Users/lziegel1/Documents/CourseraDataScience/R/UCI HAR Dataset/train/")
xTrain=read.table("X_train.txt")
yTrain=read.table("y_train.txt")
subjectTrain=read.table("subject_train.txt")

##Read in Test data
setwd("C:/Users/lziegel1/Documents/CourseraDataScience/R/UCI HAR Dataset/test/")
xTest=read.table("X_test.txt")
yTest=read.table("y_test.txt")
subjectTest=read.table("subject_test.txt")

#Read in the features data
setwd("C:/Users/lziegel1/Documents/CourseraDataScience/R/UCI HAR Dataset/")
features=read.table("features.txt")

# Make the headings of x data the list of features
names(xTest)=features[,2]
names(xTrain)=features[,2]

names(subjectTrain)="subject"
names(subjectTest)="subject"
names(yTrain)="activityID"
names(yTest)="activityID"

#Combine the x, y, and subject train data
TrainData=cbind(subjectTrain,yTrain,xTrain)
#Combine the x, y, and subject test data
TestData=cbind(subjectTest,yTest,xTest)

#Combine the Train Data and Test Data
AllData=rbind(TrainData,TestData)

####Extract only the measurements on the mean and standard deviation for each measurement. 

MeanData=grep("mean",names(AllData))
STDData=grep("std",names(AllData))
NewData=AllData[,c(1,2,MeanData,STDData)] #Keeps subject, activity, and appropriate columns

####Uses descriptive activity names to name the activities in the data set
#Read in the activity labels
AL=read.table("activity_labels.txt")
names(AL)=c("activityID","ActivityName")

#Merge the activity labels in our AllData data frame with the activity column
a=join(NewData,AL)
Data=NewData[,1:80]
Data[,2]=a[,82] #Replace numeric id values with descriptive activity names

####Replace column labels with more easil understood versions

names(Data)=tolower(names(Data))
names(Data)=gsub("-","",names(Data),) #Remove all hyphens
names(Data)=gsub(pattern="\\(\\)","",names(Data),) #Remove all parentheses

####Create a second tidy data set with the average of each variable for each activity and each subject
library(reshape2)
b=melt(Data,id=c("subject","activityid")) 
Tidy=dcast(b,subject+activityid~variable,mean)

## Write Tidy data frame to a text file
write.table(Tidy,file="TidyDataforGACDProject.txt",sep=",")
