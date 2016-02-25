## Course project for Getting and Cleaning Data
## 25-Feb-2016 LH

## This script is run from the UCI HAR Dataset directory.

## 1. Merge the training and test sets to create one dataset.
subject_train <- read.table("./train/subject_train.txt")
y_train_lbls <- read.table("./train/y_train.txt")
X_train <- read.table("./train/X_train.txt")

all_train <- cbind(subject_train, y_train_lbls, X_train)

subject_test <- read.table("./test/subject_test.txt")
y_test_lbls <- read.table("./test/y_test.txt")
X_test <- read.table("./test/X_test.txt")

all_test <- cbind(subject_test, y_test_lbls, X_test)

all_train_test <- rbind(all_train, all_test)

## 2. Extract only the measurements on the mean and standard deviation 
## for each measurement.
## First, I use features.txt to label the columns,
features <- read.table("./features.txt")
colnames(all_train_test) <- c("subject", "activity", as.character(features[,2]))

## and then take only the cols with mean or sd's.
hasmean <- grep("mean()", as.character(features[,2]))
hasstd <- grep("std()", as.character(features[,2]))
tokeep <- c(1,2,hasmean+2,hasstd+2)

means_stds <- all_train_test[,tokeep]

## 3. Uses descriptive activity names to name the activities in the data set.
## I use activity_labels.txt to name the activities (in my 2nd column).
means_stds$activity[means_stds$activity==1] <- "WALKING"
means_stds$activity[means_stds$activity==2] <- "WALKING_UPSTAIRS"
means_stds$activity[means_stds$activity==3] <- "WALKING_DOWNSTAIRS"
means_stds$activity[means_stds$activity==4] <- "SITTING"
means_stds$activity[means_stds$activity==5] <- "STANDING"
means_stds$activity[means_stds$activity==6] <- "LAYING"

## 4. Appropriately labels the data set with descriptive variable names.
## (This got done already in step 2.)

## 5. From the data set in step 4, creates a second, independent tidy data set with the 
## average of each variable for each activity and each subject.
library(dplyr)
walking <- filter(means_stds, activity == "WALKING")
walkingSubjects <- group_by(walking, subject)
walkingSummary <- summarise_each(walkingSubjects, funs(mean), vars=(-activity))
walkingSummary <- mutate(walkingSummary, activity="walking")
walkingSummary <- select(walkingSummary, subject, activity, `tBodyAcc-mean()-X`:`fBodyBodyGyroJerkMag-std()`)

walking_upstairs <- filter(means_stds, activity == "WALKING_UPSTAIRS")
walkingUpSubjects <- group_by(walking_upstairs, subject)
walkingUpSummary <- summarise_each(walkingUpSubjects, funs(mean), vars=(-activity))
walkingUpSummary <- mutate(walkingUpSummary, activity="walking_upstairs")
walkingUpSummary <- select(walkingUpSummary, subject, activity, `tBodyAcc-mean()-X`:`fBodyBodyGyroJerkMag-std()`)


walking_downstairs <- filter(means_stds, activity == "WALKING_DOWNSTAIRS")
walkingDownSubjects <- group_by(walking_downstairs, subject)
walkingDownSummary <- summarise_each(walkingDownSubjects, funs(mean), vars=(-activity))
walkingDownSummary <- mutate(walkingDownSummary, activity="walking_downstairs")
walkingDownSummary <- select(walkingDownSummary, subject, activity, `tBodyAcc-mean()-X`:`fBodyBodyGyroJerkMag-std()`)

sitting <- filter(means_stds, activity == "SITTING")
sittingSubjects <- group_by(sitting, subject)
sittingSummary <- summarise_each(sittingSubjects, funs(mean), vars=(-activity))
sittingSummary <- mutate(sittingSummary, activity="sitting")
sittingSummary <- select(sittingSummary, subject, activity, `tBodyAcc-mean()-X`:`fBodyBodyGyroJerkMag-std()`)

standing <- filter(means_stds, activity == "STANDING")
standingSubjects <- group_by(standing, subject)
standingSummary <- summarise_each(standingSubjects, funs(mean), vars=(-activity))
standingSummary <- mutate(standingSummary, activity="standing")
standingSummary <- select(standingSummary, subject, activity, `tBodyAcc-mean()-X`:`fBodyBodyGyroJerkMag-std()`)

laying <- filter(means_stds, activity == "LAYING")
layingSubjects <- group_by(laying, subject)
layingSummary <- summarise_each(layingSubjects, funs(mean), vars=(-activity))
layingSummary <- mutate(layingSummary, activity="laying")
layingSummary <- select(layingSummary, subject, activity, `tBodyAcc-mean()-X`:`fBodyBodyGyroJerkMag-std()`)

secondTidySet <- bind_rows(walkingSummary, walkingUpSummary, walkingDownSummary, sittingSummary, standingSummary, layingSummary)

## Save with write.table into a txt file.
write.table(secondTidySet, file="secondTidySet.txt", row.names = FALSE)
