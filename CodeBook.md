##Data source##
This dataset is generated from the original source available at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The original README file states that
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

###For each record it is provided###

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


###Feature Selection ###

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

Transformation derived from the original data source
======================

* From the original dataset, the script
 * The script merged the training and the test sets to create one data set.
 * The script extracted only the measurements on the mean and standard deviation for each measurement. 
 * The script used descriptive activity names to name the activities in the data set
 * The script appropriately labeled the data set with descriptive variable names. 
 * The script created a second, independent tidy data set with the average of each variable for each activity and each subject.  

The new data set has 180 rows corresponding to 30 users associated with 6 activities and the following 86 variables (average of each variable for each activity and each subject).

### Variables###
Activity
Subject
Time.BodyAccel.Mean.X
Time.BodyAccel.Mean.Y
Time.BodyAccel.Mean.Z
Time.BodyAccel.Std.X
Time.BodyAccel.Std.Y
Time.BodyAccel.Std.Z
Time.GravityAccel.Mean.X
Time.GravityAccel.Mean.Y
Time.GravityAccel.Mean.Z
Time.GravityAccel.Std.X
Time.GravityAccel.Std.Y
Time.GravityAccel.Std.Z
Time.BodyAccelJerk.Mean.X
Time.BodyAccelJerk.Mean.Y
Time.BodyAccelJerk.Mean.Z
Time.BodyAccelJerk.Std.X
Time.BodyAccelJerk.Std.Y
Time.BodyAccelJerk.Std.Z
Time.BodyGyro.Mean.X
Time.BodyGyro.Mean.Y
Time.BodyGyro.Mean.Z
Time.BodyGyro.Std.X
Time.BodyGyro.Std.Y
Time.BodyGyro.Std.Z
Time.BodyGyroJerk.Mean.X
Time.BodyGyroJerk.Mean.Y
Time.BodyGyroJerk.Mean.Z
Time.BodyGyroJerk.Std.X
Time.BodyGyroJerk.Std.Y
Time.BodyGyroJerk.Std.Z
Time.BodyAccelMagnitude.Mean
Time.BodyAccelMagnitude.Std
Time.GravityAccelMagnitude.Mean
Time.GravityAccelMagnitude.Std
Time.BodyAccelJerkMagnitude.Mean
Time.BodyAccelJerkMagnitude.Std
Time.BodyGyroMagnitude.Mean
Time.BodyGyroMagnitude.Std
Time.BodyGyroJerkMagnitude.Mean
Time.BodyGyroJerkMagnitude.Std
Frequency.BodyAccel.Mean.X
Frequency.BodyAccel.Mean.Y
Frequency.BodyAccel.Mean.Z
Frequency.BodyAccel.Std.X
Frequency.BodyAccel.Std.Y
Frequency.BodyAccel.Std.Z
Frequency.BodyAccel.Mean.Frequency.X
Frequency.BodyAccel.Mean.Frequency.Y
Frequency.BodyAccel.Mean.Frequency.Z
Frequency.BodyAccelJerk.Mean.X
Frequency.BodyAccelJerk.Mean.Y
Frequency.BodyAccelJerk.Mean.Z
Frequency.BodyAccelJerk.Std.X
Frequency.BodyAccelJerk.Std.Y
Frequency.BodyAccelJerk.Std.Z
Frequency.BodyAccelJerk.Mean.Frequency.X
Frequency.BodyAccelJerk.Mean.Frequency.Y
Frequency.BodyAccelJerk.Mean.Frequency.Z
Frequency.BodyGyro.Mean.X
Frequency.BodyGyro.Mean.Y
Frequency.BodyGyro.Mean.Z
Frequency.BodyGyro.Std.X
Frequency.BodyGyro.Std.Y
Frequency.BodyGyro.Std.Z
Frequency.BodyGyro.Mean.Frequency.X
Frequency.BodyGyro.Mean.Frequency.Y
Frequency.BodyGyro.Mean.Frequency.Z
Frequency.BodyAccelMagnitude.Mean
Frequency.BodyAccelMagnitude.Std
Frequency.BodyAccelMag.Mean.Frequency
Frequency.BodyBodyAccelJerkMagnitude.Mean
Frequency.BodyBodyAccelJerkMagnitude.Std
Frequency.BodyBodyAccelJerkMag.Mean.Frequency
Frequency.BodyBodyGyroMagnitude.Mean
Frequency.BodyBodyGyroMagnitude.Std
Frequency.BodyBodyGyroMag.Mean.Frequency
Frequency.BodyBodyGyroJerkMagnitude.Mean
Frequency.BodyBodyGyroJerkMagnitude.Std
Frequency.BodyBodyGyroJerkMag.Mean.Frequency
Angle.Time.BodyAccelMean.Gravity
Angle.Time.BodyAccelJerkMean.GravityMean)
Angle.Time.BodyGyroMean.GravityMean
Angle.Time.BodyGyroJerkMean.GravityMean
Angle.X.GravityMean
Angle.Y.GravityMean
Angle.Z.GravityMean
