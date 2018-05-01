Coursera Assignment: Tidy data for experiment in activity tracking
============================================================================================================
Code Book
============================================================================================================


Description of the data:

The data for this assignment has been obtained by experiments carried out with a group of 30 volunteers.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured:
- 3-axial linear acceleration signals
- 3-axial angular velocity signals 
The experiments have been video-recorded to label the data manually with the performed activities.


Data transformations:

Linear acceleration signals are...
- ...time domain signals 
- ...measured in standard gravity units 'g'
- ...was separated into body acceleration and gravity
- ...normalized and bounded within [-1,1]
- ...used to calculate a mean value and a standard deviation

Angular velocity signals are...
- ...time domain signals 
- ...measured in radians/second
- ...normalized and bounded within [-1,1]
- ...used to calculate a mean value and a standard deviation

Frequency domain signals are...
- ...produced by applying a Fast Fourier Transform to acceleration and volocity signals
- ...used to calculate a mean value and a standard deviation



Description of variables:

General

- subject			A number which identifies the person/volunteer who performed the activity. Its range is from 1 to 30
- activity		The specific activity of the volunteer which caused the smartphone to capture specific acceleration and volocity signals

Body acceleration signals, 3-axial

- tBodyAcc-mean()-X		    mean value of body acceleration signals on X axis
- tBodyAcc-mean()-Y		    mean value of body acceleration signals on Y axis
- tBodyAcc-mean()-Z		    mean value of body acceleration signals on Z axis
- tBodyAcc-std()-X		    standard deviation of body acceleration signals on X axis
- tBodyAcc-std()-Y		    standard deviation of body acceleration signals on Y axis
- tBodyAcc-std()-Z		    standard deviation of body acceleration signals on Z axis
- tBodyAccJerk-mean()-X		mean value of Jerk signals, derived in time from the body acceleration signals on X axis
- tBodyAccJerk-mean()-Y		mean value of Jerk signals, derived in time from the body acceleration signals on Y axis
- tBodyAccJerk-mean()-Z		mean value of Jerk signals, derived in time from the body acceleration signals on Z axis
- tBodyAccJerk-std()-X		standard deviation of Jerk signals, derived in time from the body acceleration signals on X axis
- tBodyAccJerk-std()-Y		standard deviation of Jerk signals, derived in time from the body acceleration signals on Y axis
- tBodyAccJerk-std()-Z		standard deviation of Jerk signals, derived in time from the body acceleration signals on Z axis
- tBodyAccMag-mean()		  mean value of the magnitude of the three-dimensional signals of body acceleration, based on the Euclidean norm
- tBodyAccMag-std()		    standard deviation of the magnitude of the three-dimensional signals of body acceleration, based on the Euclidean norm
- tBodyAccJerkMag-mean()	mean value of the magnitude of the Jerk signals, based on the Euclidean norm
- tBodyAccJerkMag-std()		standard deviation of the magnitude of the Jerk signals, based on the Euclidean norm

Gravity acceleration signals, 3-axial

- tGravityAcc-mean()-X		mean value of gravity acceleration signal on X axis
- tGravityAcc-mean()-Y		mean value of gravity acceleration signal on Y axis
- tGravityAcc-mean()-Z		mean value of gravity acceleration signal on Z axis
- tGravityAcc-std()-X		  standard deviation of gravity acceleration signal on X axis
- tGravityAcc-std()-Y		  standard deviation of gravity acceleration signal on Y axis
- tGravityAcc-std()-Z		  standard deviation of gravity acceleration signal on Z axis
- tGravityAccMag-mean()		mean value of magnitude of these three-dimensional signals of gravity acceleration, based on the Euclidean norm
- tGravityAccMag-std()		standard deviation of magnitude of these three-dimensional signals of gravity acceleration, based on the Euclidean norm

Angular velocity signals, 3-axial

- tBodyGyro-mean()-X		  mean value of angular velocity signal on X axis
- tBodyGyro-mean()-Y		  mean value of angular velocity signal on Y axis
- tBodyGyro-mean()-Z		  mean value of angular velocity signal on Z axis
- tBodyGyro-std()-X		    standard deviation of angular velocity signal on X axis
- tBodyGyro-std()-Y		    standard deviation of angular velocity signal on Y axis
- tBodyGyro-std()-Z		    standard deviation of angular velocity signal on Z axis
- tBodyGyroJerk-mean()-X	mean value of Jerk signal derived in time from the angular velocity
- tBodyGyroJerk-mean()-Y	mean value of Jerk signal derived in time from the angular velocity
- tBodyGyroJerk-mean()-Z	mean value of Jerk signal derived in time from the angular velocity
- tBodyGyroJerk-std()-X		standard deviation of Jerk signal derived in time from the angular velocity
- tBodyGyroJerk-std()-Y		standard deviation of Jerk signal derived in time from the angular velocity
- tBodyGyroJerk-std()-Z		standard deviation of Jerk signal derived in time from the angular velocity
- tBodyGyroMag-mean()	  	mean value of the magnitude of the three-dimensional signals of angular velocity, based on the Euclidean norm
- tBodyGyroMag-std()		  standard deviation of the magnitude of the three-dimensional signals of angular velocity, based on the Euclidean norm
- tBodyGyroJerkMag-mean()	mean value of the magnitude of the Jerk signal, based on the Euclidean norm
- tBodyGyroJerkMag-std()	standard deviation of the magnitude of the Jerk signal, based on the Euclidean norm

Freqyency domain signals

- fBodyAcc-mean()-X		    mean value of the body acceleration signals on X axis
- fBodyAcc-mean()-Y		    mean value of the body acceleration signals on Y axis
- fBodyAcc-mean()-Z		    mean value of the body acceleration signals on Z axis
- fBodyAcc-std()-X		    standard deviation of the body acceleration signals on X axis
- fBodyAcc-std()-Y	    	standard deviation of the body acceleration signals on Y axis
- fBodyAcc-std()-Z	    	standard deviation of the body acceleration signals on Z axis
- fBodyAccJerk-mean()-X		mean value of Jerk signals, derived in time from the body acceleration signals on X axis
- fBodyAccJerk-mean()-Y		mean value of Jerk signals, derived in time from the body acceleration signals on Y axis
- fBodyAccJerk-mean()-Z		mean value of Jerk signals, derived in time from the body acceleration signals on Z axis
- fBodyAccJerk-std()-X		standard deviation of Jerk signals, derived in time from the body acceleration signals on X axis
- fBodyAccJerk-std()-Y		standard deviation of Jerk signals, derived in time from the body acceleration signals on Y axis
- fBodyAccJerk-std()-Z		standard deviation of Jerk signals, derived in time from the body acceleration signals on Z axis
- fBodyGyro-mean()-X	  	mean value of angular velocity signal on X axis
- fBodyGyro-mean()-Y	  	mean value of angular velocity signal on Y axis
- fBodyGyro-mean()-Z	  	mean value of angular velocity signal on Z axis
- fBodyGyro-std()-X	    	standard deviation of angular velocity signal on X axis
- fBodyGyro-std()-Y	    	standard deviation of angular velocity signal on Y axis
- fBodyGyro-std()-Z	    	standard deviation of angular velocity signal on Z axis
- fBodyAccMag-mean()	  	mean value of magnitude of the three-dimensional signals of body acceleration, based on the Euclidean norm
- fBodyAccMag-std()		    standard deviation of magnitude of the three-dimensional signals of body acceleration, based on the Euclidean norm
- fBodyAccJerkMag-mean()	mean value of the magnitude of the Jerk signals, based on the Euclidean norm
- fBodyAccJerkMag-std()		standard deviation of the magnitude of the Jerk signals, based on the Euclidean norm
- fBodyGyroMag-mean()		  mean value of the magnitude of the three-dimensional signals of angular velocity, based on the Euclidean norm
- fBodyGyroMag-std()		  standard deviation of the magnitude of the three-dimensional signals of angular velocity, based on the Euclidean norm
- fBodyGyroJerkMag-mean()	mean value of the magnitude of the Jerk signal, based on the Euclidean norm
- fBodyGyroJerkMag-std()	standard deviation of the magnitude of the Jerk signal, based on the Euclidean norm
