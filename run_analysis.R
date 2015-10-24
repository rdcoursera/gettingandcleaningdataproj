# ###########
# Get the data - This script will get the zip file from the url, download it to the OS temp dir.
# The script reads each file needed directly from the zip file without expanding the zip.
# This allow running the script without making any assumption of the data location
# ##########
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",temp)
# get data files
xtest <- read.table(unz(temp,"UCI HAR Dataset/test/X_test.txt"))
xtrain <- read.table(unz(temp,"UCI HAR Dataset/train/X_train.txt"))
# get feature names
features <- read.table(unz(temp,"UCI HAR Dataset/features.txt"))
ytest <- read.table(unz(temp,"UCI HAR Dataset/test/y_test.txt"))
ytrain <- read.table(unz(temp,"UCI HAR Dataset/train/y_train.txt"))
subject_train <- read.table(unz(temp,"UCI HAR Dataset/train/subject_train.txt"))
subject_test <- read.table(unz(temp,"UCI HAR Dataset/test/subject_test.txt"))
activitylabels <- read.table(unz(temp,"UCI HAR Dataset/activity_labels.txt"))
unlink(temp)
# Reading data files complete

##### 1. Merges the training and the test sets to create one data set.
xtesttrain <- rbind(xtest,xtrain) # merge raw data sets
colnames(xtesttrain) <- features[,2] # set col names of raw data
# get activity labels
ytesttrain <- rbind(ytest,ytrain) # merge activity labels
xtesttrain <- cbind(ytesttrain[,1],xtesttrain) # add label col to start of raw data 
xsubjects <- rbind(subject_test,subject_train) # merge subjects
## extract mean and std cols
##### 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
xmeancols <- xtesttrain[,grepl("mean",names(xtesttrain))] # find col names with "mean"
xmeancols <- subset(xmeancols, select = -(grep("meanFreq",names(xmeancols)))) # remove meanFreq cols since they aren't weighted averages
xstdcols <- xtesttrain[,grepl("std",names(xtesttrain))] # find col names with "std"
xmeanstd <- cbind(xmeancols,xstdcols) # combine mean and std
xmeanstd <- cbind(ytesttrain[,1],xmeanstd) # add column of activity numbers
xmeanstd <- cbind(xsubjects[,1],xmeanstd) # add column of test subject numbers

##### 3. Uses descriptive activity names to name the activities in the data set
colnames(xmeanstd)[1] <- "Subject"
colnames(xmeanstd)[2] <- "Activities"
# get activity labels
activitylabels <- activitylabels$V2 #extract activities column
# set activity labels 
xmeanstd <- within(xmeanstd, Activities <- levels(activitylabels)[Activities])

#### 4. Appropriately labels the data set with descriptive variable names. 
#standardize names for tidy data set
names(xmeanstd)<-gsub("^t", "time", names(xmeanstd))
names(xmeanstd)<-gsub("^f", "frequency", names(xmeanstd))
names(xmeanstd)<-gsub("Acc", "Accelerometer", names(xmeanstd))
names(xmeanstd)<-gsub("Gyro", "Gyroscope", names(xmeanstd))
names(xmeanstd)<-gsub("Mag", "Magnitude", names(xmeanstd))
names(xmeanstd)<-gsub("BodyBody", "Body", names(xmeanstd))
names(xmeanstd)<-gsub("mean", "Mean", names(xmeanstd))
names(xmeanstd)<-gsub("std", "Std", names(xmeanstd))
names(xmeanstd)<-gsub("-", "", names(xmeanstd))
names(xmeanstd)<-gsub("\\(", "", names(xmeanstd))
names(xmeanstd)<-gsub("\\)", "", names(xmeanstd))
#### 5. From the data set in step 4, creates a second, independent tidy data set 
####     with the average of each variable for each activity and each subject
# perform the required group means and output the final tidy dataset
tidydataset <- aggregate(xmeanstd[,-(1:2)], by = list(Activies = xmeanstd$Activities,
                                                      Subject =xmeanstd$Subject), FUN = "mean")
####
#### Write the output text file
write.table(tidydataset,"tidydataset.txt",row.name=FALSE)
