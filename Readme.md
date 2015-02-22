The data should be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzipped. The R script assumes the current working directory includes the folder "UCI HAR Dataset" which houses the data sets. A version of the below summary of the R script is included as comments in the R script.

Set working directory to "UCI HAR Dataset".

Load data using read.table into easy to use variables. The data includes the below files.
features.txt
test/subject_test.txt
test/x_test.txt
test/y_test.txt
train/subject_train.txt
train/x_train.txt
train/y_train.txt

The features.txt file is a list of the column names for the x_train.txt and x_test.txt data. This is assumed because it is 561 variables long and the x_train.txt and x_test.txt data are each 561 variables wide. So we add features.txt as column names to x_test and x_train data unsing the colnames function.

Subject_test and subject_train list the subject numbers for each row in the x_train.txt and x_test.txt data. This is assumed because subject_test and subject_train include numbers 1-30 (there were 30 subjects) and they have the same number of observations (length) as x_train.txt and x_test.txt data. Similarly we assume that y_test and y_train include the activities because they list numbers 1-6 (there were 6 activities measured) and they have the same number of observations (length) as x_train.txt and x_test.txt data. We add the column name Subject.Num to subject_test, subject_train, and Activity to y_test and y_train

Next we bind the y_test and subject_test data to the x_test data, do the same for the train data and finally combine the train and test data. We now have our full dataset.

Using the column numbers we subset the subject number, activity and the columns that have the mean or standard deviation data. 

Next we reassign the numbers in our Activity column to the Activity names referenced in the activity_labels.txt file.

Next we rename the measurement column names to be human readable. Mainly expanding the abreviated names into full words (e.g. "Acc" becomes "Acceleration").

Finally we use the plry package to create our second, independent tidy data set with the average of each variable for each activity and each subject and then use write.table to write it to a txt file.