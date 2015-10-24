## This is my R script for the GettingAndCleaningData Course Project.
## First of all you shuold make sure you have the Samsung data is in your working directory.

## activate those libraries that I will use in this R Script.
library(dplyr)
library(reshape2)

## Download the features and lable name data
features <- read.table("features.txt", header = FALSE)
lablename <- read.table("activity_labels.txt", header = FALSE, col.names = c("lable", "Activity"))

Varname <- features[,2] ## creat a character list of the variable names to use later as column name for the data set

## Download the test group data and attaching the Activity lable and subject to the data set
Rawtest <- read.table("test/X_test.txt", header = FALSE, col.names = Varname)
testLables <- read.table("test/y_test.txt", header = FALSE, col.names = "lable")
testsubject <- read.table("test/subject_test.txt", header = FALSE, col.names = "subject")
test <- cbind(testsubject,testLables,Rawtest)

## Download the train group data and attaching the Activity lable and subject to the data set
Rawtrain <- read.table("train/X_train.txt", header = FALSE, col.names = Varname)
trainLables <- read.table("train/y_train.txt", header = FALSE, col.names = "lable")
trainsubject <- read.table("train/subject_train.txt", header = FALSE, col.names = "subject")
train <- cbind(trainsubject,trainLables,Rawtrain)

## Now I have two similar dataframes, one with test group data and the other with train group data
## Next, I combine the two dataframes using rbind function
Fullset <- rbind.data.frame(test,train) 

## To this conbined data frame I merge the Activity name based on the lable column.
Fullset <- merge(lablename,Fullset,by = "lable")

## To filter only the mean and standard diviation measors I create a logical vector to find them.
meancol <- grepl( "mean" , names( Fullset))
stdcol <-grepl( "std" , names( Fullset))
Finalset <- cbind("Activity" = Fullset[,"Activity"] , "subject" = Fullset[,"subject"] , Fullset [,(meancol | stdcol)])
## This Final set dataframe contain only the mean and std mesurment

## this part is using functions from the reshape2 package
## the first function is melt, used to define which of the dataset's columns are "id", and which are measure
MeltSet <- melt(Finalset,id=c("Activity","subject"),measure.vars=c(names(Finalset[,3:68])))
## the second function is dcast, used to aplly a function to all the varibles along the defined "id" variable
SetData <- dcast(MeltSet, Activity+subject ~ variable,mean)

##Last, I write the TidyDataSet into a Text File
write.table(SetData, file = "TidyDataSet.txt", row.name=FALSE)
