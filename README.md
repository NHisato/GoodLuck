GoodLuck
========

Getting and Cleaning Data course project

  This R script 'run_analysis.R' will read unziped files from

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

and return goodruck.txt which includes mean values for each activity of the measurements on the mean and standard deviation for each measurement.

  x contains measured data about 561 features as listed in features.text file. 
First we read x_train and x_test files and use colnames() command to set 561 features.
x[,grep(c("mean\\(|std\\("),features[,2])] will extract the measurements on the mean and standard deviation.

  y files show activities. The files y_tain and y_test include factor and activity_labels.txt has the levels, such as 
  
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING.

  Selected means ans sds are
  
tBodyAcc-mean()-X, Y, Z           tBodyAcc-std()-X, Y, Z 

tGravityAcc-mean()-X ,Y, Z        tGravityAcc-std()-X, Y, Z  

tBodyAccJerk-mean()-X, Y, Z       tBodyAccJerk-std()-X, Y, Z

tBodyGyro-mean()-X, Y, Z          tBodyGyro-std()-X, Y, Z

tBodyGyroJerk-mean()-X, Y, Z      tBodyGyroJerk-std()-X, Y, Z

tBodyAccMag-mean()                tBodyAccMag-std() 

tGravityAccMag-mean()             tGravityAccMag-std()

tBodyAccJerkMag-mean()            tBodyAccJerkMag-std()

tBodyGyroMag-mean()               tBodyGyroMag-std()

tBodyGyroJerkMag-mean()           tBodyGyroJerkMag-std()

fBodyAcc-mean()-X, Y, Z           fBodyAcc-std()-X, Y, Z

fBodyAccJerk-mean()-X, Y, Z       fBodyAccJerk-std()-X, Y, Z

fBodyGyro-mean()-X, Y,Z           fBodyGyro-std()-X, Y, Z

fBodyAccMag-mean()                fBodyAccMag-std()

fBodyBodyAccJerkMag-mean()        fBodyBodyAccJerkMag-std()

fBodyBodyGyroMag-mean()           fBodyBodyGyroMag-std()

fBodyBodyGyroJerkMag-mean()       fBodyBodyGyroJerkMag-std()


  So you can get 6*66 mean values if you define .../UCI HAR Dataset folder as a working directory and run 'run_analysis.R' script.
