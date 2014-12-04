setwd("./Coursera/UCI HAR Dataset")
###
#Reads x data, train and test
X_train <- read.table("./train/X_train.txt", quote="\"")
X_test <- read.table("./test/X_test.txt", quote="\"")
#####
#Step 1 Merges the training and the test sets
x<-rbind(X_test,X_train)
#Reads features.txt file and set as colnames
features <- read.table("./features.txt", quote="\"")
colnames(x)<-features[,2]
#####
#Step 2 Extracts only the measurements on the mean and standard deviation
#Keep attension not to include meanFreq().
x <-x[,grep(c("mean\\(|std\\("),features[,2])]
#####
#Step 3 Uses descriptive activity name
#Read y factor tables train and test
y_train <- read.table("./train/y_train.txt", quote="\"")
y_test <- read.table("./test/y_test.txt", quote="\"")
y<-rbind(y_test,y_train)
#Read y character file 
activity_labels <- read.table("./activity_labels.txt", quote="\"")
#Set levels to y
y<-activity_labels[unlist(y),2]
#Add activity collumn to x head
x<-cbind(y,x)
#####
##Step 4 Appropriately labels the data set with descriptive variable names. 
colnames(x)[1]<-"activity"
#####
##Step 5  independent tidy data set with the average of each variable 
##for each activity and each subject.
mx<-NULL
for(i in 1:length(activity_labels[,2])){
  xx<-mapply(mean,x[x[,1]==activity_labels[i,2],][,2:length(names(x))])
  xx<-c(as.character(activity_labels[i,2]),xx)
  mx<-rbind(mx,xx)
}
mx<-as.data.frame(mx)
colnames(mx)[1]<-"activity"
##
write.table(mx,"goodluck.txt", row.name=FALSE)
