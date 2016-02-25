## Code book for secondTidySet.txt summary file created from UCI HAR Dataset
### This is modified from the features_info.txt file included in the original data.
<br>
<b>"subject"</b><br>
Number (1-30) of subject in the study
<br>
<br>
<b>"activity"</b><br>
	The activity the subject was doing:<br>

	1. WALKING
	2. WALKING_UPSTAIRS
	3. WALKING_DOWNSTAIRS
	4. SITTING
	5. STANDING
	6. LAYING
<br>
The rest of the variables correspond to the columns that were extracted from the provided dataset which are means or standard deviations.

<p>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. </p>

<p>The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). </p>

<p>A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). </p>

<p>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.</p>
The variables are the following: <br>
<b>
"tBodyAcc-mean()-X" <br>
"tBodyAcc-mean()-Y" <br>
"tBodyAcc-mean()-Z" <br>
"tGravityAcc-mean()-X" <br>
"tGravityAcc-mean()-Y" <br>
"tGravityAcc-mean()-Z" <br>
"tBodyAccJerk-mean()-X" <br>
"tBodyAccJerk-mean()-Y" <br>
"tBodyAccJerk-mean()-Z" <br>
"tBodyGyro-mean()-X" <br>
"tBodyGyro-mean()-Y" <br>
"tBodyGyro-mean()-Z" <br>
"tBodyGyroJerk-mean()-X" <br>
"tBodyGyroJerk-mean()-Y" <br>
"tBodyGyroJerk-mean()-Z" <br>
"tBodyAccMag-mean()" <br>
"tGravityAccMag-mean()" <br>
"tBodyAccJerkMag-mean()" <br>
"tBodyGyroMag-mean()" <br>
"tBodyGyroJerkMag-mean()" <br>
"fBodyAcc-mean()-X" <br>
"fBodyAcc-mean()-Y" <br>
"fBodyAcc-mean()-Z" <br>
"fBodyAcc-meanFreq()-X" <br>
"fBodyAcc-meanFreq()-Y" <br>
"fBodyAcc-meanFreq()-Z" <br>
"fBodyAccJerk-mean()-X" <br>
"fBodyAccJerk-mean()-Y" <br>
"fBodyAccJerk-mean()-Z" <br>
"fBodyAccJerk-meanFreq()-X" <br>
"fBodyAccJerk-meanFreq()-Y" <br>
"fBodyAccJerk-meanFreq()-Z" <br>
"fBodyGyro-mean()-X" <br>
"fBodyGyro-mean()-Y" <br>
"fBodyGyro-mean()-Z" <br>
"fBodyGyro-meanFreq()-X" <br>
"fBodyGyro-meanFreq()-Y" <br>
"fBodyGyro-meanFreq()-Z" <br>
"fBodyAccMag-mean()" <br>
"fBodyAccMag-meanFreq()" <br>
"fBodyBodyAccJerkMag-mean()" <br>
"fBodyBodyAccJerkMag-meanFreq()" <br>
"fBodyBodyGyroMag-mean()" <br>
"fBodyBodyGyroMag-meanFreq()" <br>
"fBodyBodyGyroJerkMag-mean()" <br>
"fBodyBodyGyroJerkMag-meanFreq()" <br>
"tBodyAcc-std()-X" <br>
"tBodyAcc-std()-Y" <br>
"tBodyAcc-std()-Z" <br>
"tGravityAcc-std()-X" <br>
"tGravityAcc-std()-Y" <br>
"tGravityAcc-std()-Z" <br>
"tBodyAccJerk-std()-X" <br>
"tBodyAccJerk-std()-Y" <br>
"tBodyAccJerk-std()-Z" <br>
"tBodyGyro-std()-X" <br>
"tBodyGyro-std()-Y" <br>
"tBodyGyro-std()-Z" <br>
"tBodyGyroJerk-std()-X" <br>
"tBodyGyroJerk-std()-Y" <br>
"tBodyGyroJerk-std()-Z" <br>
"tBodyAccMag-std()" <br>
"tGravityAccMag-std()" <br>
"tBodyAccJerkMag-std()" <br>
"tBodyGyroMag-std()" <br>
"tBodyGyroJerkMag-std()" <br>
"fBodyAcc-std()-X" <br>
"fBodyAcc-std()-Y" <br>
"fBodyAcc-std()-Z" <br>
"fBodyAccJerk-std()-X" <br>
"fBodyAccJerk-std()-Y" <br>
"fBodyAccJerk-std()-Z" <br>
"fBodyGyro-std()-X" <br>
"fBodyGyro-std()-Y" <br>
"fBodyGyro-std()-Z" <br>
"fBodyAccMag-std()" <br>
"fBodyBodyAccJerkMag-std()" <br>
"fBodyBodyGyroMag-std()" <br>
"fBodyBodyGyroJerkMag-std()"<br>
</b>
