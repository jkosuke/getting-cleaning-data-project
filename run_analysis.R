## Preparation
library(dplyr)

## Download UCI HAR Dataset
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "UCI_HAR_Dataset.zip", method = "curl", mode = "wb")
unzip(zipfile = "UCI_HAR_Dataset.zip")

## Preparing the train set
# read subject_train
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_train <- rename(subject_train, subject = V1)
# read y_train
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
y_train <- data.frame(activity_labels[y_train[, 1], 2])
names(y_train) <- "activity"
# read x_train
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
colnames(X_train) <- features$V2
# merge train set
train_set <- cbind(subject_train, y_train, X_train)

## Preparing the test set
# read subject_test table
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_test <- rename(subject_test, subject = V1)
# read y_test table
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
y_test <- data.frame(activity_labels[y_test[, 1], 2])
names(y_test) <- "activity"
# read x_test table
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
colnames(X_test) <- features$V2
# merge test set
test_set <- cbind(subject_test, y_test, X_test)

## Merge train set and test set
df <- rbind(train_set, test_set)

## Extracts mean and std columns
selected_var <- grep("[Mm]ean|[Ss]td|subject|activity", colnames(df))
df <- df[, selected_var]

## Appropriate variable names
df_colnames <- colnames(df)
df_colnames <- gsub("^t", "time", df_colnames)
df_colnames <- gsub("^f", "frequency", df_colnames)
df_colnames <- gsub("Acc", "Accelerometer", df_colnames)
df_colnames <- gsub("Gyro", "Gyroscope", df_colnames)
df_colnames <- gsub("Mag", "Magnitude", df_colnames)
df_colnames <- gsub("BodyBody", "Body", df_colnames)
df_colnames <- gsub("tBody", "timeBody", df_colnames)
df_colnames <- gsub("()", "", df_colnames, fixed = TRUE) 
df_colnames <- gsub(",", "-", df_colnames, fixed = TRUE)
colnames(df) <- df_colnames

## Create a tidy data set and save
tidydata_mean <- df %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))

## Write the data set
write.table(tidydata_mean, "tidy_data.txt", row.names = FALSE, quote = FALSE)

