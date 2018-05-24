#  Code Book

## Overview of the tidy data

The tidy data contains 180 rows and 88 columns.  
The breakdown of 88 columns is subject, activity and 86 measurements.  
Each row has averaged variables for each subject and each activity.

## Subject and Activity

Subject is the subject of the activity, and is an integer type variable ranging from 1 to 30.

The activity column is a variable of the factor type, and there are the following six types.

1.	WALKING
2.	WALKING_UPSTAIRS
3.	WALKING_DOWNSTAIRS
4.	SITTING
5.	STANDING
6.	LAYING

## Measurements

This project uses data only “mean” and “standard deviation” measurements extracted from the measured data.
I defined the meaning of “mean” in a broad sense and included "meanFreq" and "Mean" (gravityMean, etc.).
For "Mean", I added vectors obtained by averaging the signals in a signal window samples. These are used in the angle () variable:

* gravityMean  
* timeBodyAccelerometerMean  
* timeBodyAccelerometerJerkMean  
* timeBodyGyroscopeMean  
* timeBodyGyroscopeJerkMean  

The meanings of the terms included in the measurements' names are as follows:

* mean: Mean value  
* std: Standard deviation  
* meanFreq: Weighted average of the frequency components to obtain a mean frequency  

The measurements is a numeric type variable, and it has 86 columns as follows:

1.	timeBodyAccelerometer-mean-X
2.	timeBodyAccelerometer-mean-Y
3.	timeBodyAccelerometer-mean-Z
4.	timeBodyAccelerometer-std-X
5.	timeBodyAccelerometer-std-Y
6.	timeBodyAccelerometer-std-Z
7.	timeGravityAccelerometer-mean-X
8.	timeGravityAccelerometer-mean-Y
9.	timeGravityAccelerometer-mean-Z
10.	timeGravityAccelerometer-std-X
11.	timeGravityAccelerometer-std-Y
12.	timeGravityAccelerometer-std-Z
13.	timeBodyAccelerometerJerk-mean-X
14.	timeBodyAccelerometerJerk-mean-Y
15.	timeBodyAccelerometerJerk-mean-Z
16.	timeBodyAccelerometerJerk-std-X
17.	timeBodyAccelerometerJerk-std-Y
18.	timeBodyAccelerometerJerk-std-Z
19.	timeBodyGyroscope-mean-X
20.	timeBodyGyroscope-mean-Y
21.	timeBodyGyroscope-mean-Z
22.	timeBodyGyroscope-std-X
23.	timeBodyGyroscope-std-Y
24.	timeBodyGyroscope-std-Z
25.	timeBodyGyroscopeJerk-mean-X
26.	timeBodyGyroscopeJerk-mean-Y
27.	timeBodyGyroscopeJerk-mean-Z
28.	timeBodyGyroscopeJerk-std-X
29.	timeBodyGyroscopeJerk-std-Y
30.	timeBodyGyroscopeJerk-std-Z
31.	timeBodyAccelerometerMagnitude-mean
32.	timeBodyAccelerometerMagnitude-std
33.	timeGravityAccelerometerMagnitude-mean
34.	timeGravityAccelerometerMagnitude-std
35.	timeBodyAccelerometerJerkMagnitude-mean
36.	timeBodyAccelerometerJerkMagnitude-std
37.	timeBodyGyroscopeMagnitude-mean
38.	timeBodyGyroscopeMagnitude-std
39.	timeBodyGyroscopeJerkMagnitude-mean
40.	timeBodyGyroscopeJerkMagnitude-std
41.	frequencyBodyAccelerometer-mean-X
42.	frequencyBodyAccelerometer-mean-Y
43.	frequencyBodyAccelerometer-mean-Z
44.	frequencyBodyAccelerometer-std-X
45.	frequencyBodyAccelerometer-std-Y
46.	frequencyBodyAccelerometer-std-Z
47.	frequencyBodyAccelerometer-meanFreq-X
48.	frequencyBodyAccelerometer-meanFreq-Y
49.	frequencyBodyAccelerometer-meanFreq-Z
50.	frequencyBodyAccelerometerJerk-mean-X
51.	frequencyBodyAccelerometerJerk-mean-Y
52.	frequencyBodyAccelerometerJerk-mean-Z
53.	frequencyBodyAccelerometerJerk-std-X
54.	frequencyBodyAccelerometerJerk-std-Y
55.	frequencyBodyAccelerometerJerk-std-Z
56.	frequencyBodyAccelerometerJerk-meanFreq-X
57.	frequencyBodyAccelerometerJerk-meanFreq-Y
58.	frequencyBodyAccelerometerJerk-meanFreq-Z
59.	frequencyBodyGyroscope-mean-X
60.	frequencyBodyGyroscope-mean-Y
61.	frequencyBodyGyroscope-mean-Z
62.	frequencyBodyGyroscope-std-X
63.	frequencyBodyGyroscope-std-Y
64.	frequencyBodyGyroscope-std-Z
65.	frequencyBodyGyroscope-meanFreq-X
66.	frequencyBodyGyroscope-meanFreq-Y
67.	frequencyBodyGyroscope-meanFreq-Z
68.	frequencyBodyAccelerometerMagnitude-mean
69.	frequencyBodyAccelerometerMagnitude-std
70.	frequencyBodyAccelerometerMagnitude-meanFreq
71.	frequencyBodyAccelerometerJerkMagnitude-mean
72.	frequencyBodyAccelerometerJerkMagnitude-std
73.	frequencyBodyAccelerometerJerkMagnitude-meanFreq
74.	frequencyBodyGyroscopeMagnitude-mean
75.	frequencyBodyGyroscopeMagnitude-std
76.	frequencyBodyGyroscopeMagnitude-meanFreq
77.	frequencyBodyGyroscopeJerkMagnitude-mean
78.	frequencyBodyGyroscopeJerkMagnitude-std
79.	frequencyBodyGyroscopeJerkMagnitude-meanFreq
80.	angle(timeBodyAccelerometerMean-gravity)
81.	angle(timeBodyAccelerometerJerkMean)-gravityMean)
82.	angle(timeBodyGyroscopeMean-gravityMean)
83.	angle(timeBodyGyroscopeJerkMean-gravityMean)
84.	angle(X-gravityMean)
85.	angle(Y-gravityMean)
86.	angle(Z-gravityMean)
