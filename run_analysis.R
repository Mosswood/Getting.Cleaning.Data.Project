## Set working directory
setwd("UCI HAR Dataset")

## Load data
features <- read.table("features.txt")
subject_test <- read.table("test/subject_test.txt")
x_test <- read.table("test/x_test.txt")
y_test <- read.table("test/y_test.txt")
subject_train <- read.table("train/subject_train.txt")
x_train <- read.table("train/x_train.txt")
y_train <- read.table("train/y_train.txt")

## Add features.txt column names to x_test and x_train data
colnames(x_test) <- features[,2]
colnames(x_train) <- features[,2]

## Add column names to subject_test, subject_train, y_test and y_train
colnames(subject_test) <- "Subject.Num"
colnames(subject_train) <- "Subject.Num"
colnames(y_test) <- "Activity"
colnames(y_train) <- "Activity"

## Combine Subject, x and y data to create 2 data frames
testdata <- cbind(subject_test,y_test,x_test)
traindata <- cbind(subject_train,y_train,x_train)

## Combine testdata and traindata
fulldata <- rbind(testdata,traindata)

## Extract Subject.Num, Activity, Mean and Standard Dev data
msdata <- fulldata[,c(1,2,3,4,5,6,7,8,43,44,45,46,47,48,83,84,
                      85,86,87,88,123,124,125,126,127,128,163,
                      164,165,166,167,168,203,204,216,217,229,
                      230,242,243,255,256,268,269,270,271,272,
                      273,347,348,349,350,351,352,426,427,428,
                      429,430,431,505,506,518,519,531,532,544,
                      545)]

##Reassign Activity number to Activity names

msdata$Activity[msdata$Activity==1] <- "WALKING"
msdata$Activity[msdata$Activity==2] <- "WALKING_UPSTAIRS"
msdata$Activity[msdata$Activity==3] <- "WALKING_DOWNSTAIRS"
msdata$Activity[msdata$Activity==4] <- "WALKING_DOWNSTAIRSSITTING"
msdata$Activity[msdata$Activity==5] <- "STANDING"
msdata$Activity[msdata$Activity==6] <- "LAYING"

## Rename measurement column names to be human readable
names(msdata)<-gsub("^t", "time", names(msdata))
names(msdata)<-gsub("^f", "frequency", names(msdata))
names(msdata)<-gsub("Acc", "Accelerometer", names(msdata))
names(msdata)<-gsub("Gyro", "Gyroscope", names(msdata))
names(msdata)<-gsub("Mag", "Magnitude", names(msdata))
names(msdata)<-gsub("BodyBody", "Body", names(msdata))

## Create a second, independent tidy data set with 
## the average of each variable for each activity and each subject
library(plyr)
TidyData<-aggregate(. ~Subject.Num + Activity, msdata, mean)
TidyData<-TidyData[order(TidyData$Subject.Num,TidyData$Activity),]

## Write tidy dataset to disk
write.table(TidyData, file = "tidydata.txt",row.name=FALSE)