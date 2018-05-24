# Getting and Cleaning Data Course Project

## Overview
This project uses data on six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) measured with a smartphone's accelerometer and gyroscope. Only “mean” and “standard deviation” measurements are extracted from the measured data. Then create a new tidy data set with the average of each variable for each activity and each subject.

Here are the original data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This repository contains the following files:  
* README.md  
* tidy_data.txt  
* CodeBook.md  
* run_analysis.R  

## A brief description of the script:
1.	Download the original data.
2.	Read the data.
3.	Merge the training and the test sets to create one data set.
4.	Extracts only the measurements on the mean and standard deviation for each measurement.
5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6.	Save the created data set as tidy_data.txt.
