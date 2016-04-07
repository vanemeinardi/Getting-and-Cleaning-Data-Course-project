## Description of the experiment
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

##For each record it is provided:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.


This code book summarizes the resulting data fields in tidy.txt. 
## Identifiers
* SubjectId - The ID of the test subject, its range between 1 to 30.
* Activity - The type of activity performed when the corresponding measurements were taken. Six levels WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,
SITTING, STANDING,LAYING. 

## Variables
* TimeBodyAccMeanX
* TimeBodyAccMeanY
* TimeBodyAccMeanZ
* TimeBodyAccStDevX
* TimeBodyAccStDevY
* TimeBodyAccStDevZ
* TimeGravityAccMeanX
* TimeGravityAccMeanY
* TimeGravityAccMeanZ
* TimeGravityAccStDevX
* TimeGravityAccStDevY
* TimeGravityAccStDevZ
* TimeBodyAccJerkMeanX
* TimeBodyAccJerkMeanY
* TimeBodyAccJerkMeanZ
* TimeBodyAccJerkStDevX
* TimeBodyAccJerkStDevY
* TimeBodyAccJerkStDevZ
* TimeBodyGyroMeanX
* TimeBodyGyroMeanY
* TimeBodyGyroMeanZ
* TimeBodyGyroStDevX
* TimeBodyGyroStDevY
* TimeBodyGyroStDevZ
* TimeBodyGyroJerkMeanX
* TimeBodyGyroJerkMeanY
* TimeBodyGyroJerkMeanZ
* TimeBodyGyroJerkStDevX
* TimeBodyGyroJerkStDevY
* TimeBodyGyroJerkStDevZ
* TimeBodyAccMagMean
* TimeBodyAccMagStDev
* TimeGravityAccMagMean
* TimeGravityAccMagStDev
* TimeBodyAccJerkMagMean
* TimeBodyAccJerkMagStDev
* TimeBodyGyroMagMean
* TimeBodyGyroMagStDev
* TimeBodyGyroJerkMagMean
* TimeBodyGyroJerkMagStDev
* FreqBodyAccMeanX
* FreqBodyAccMeanY
* FreqBodyAccMeanZ
* FreqBodyAccStDevX
* FreqBodyAccStDevY
* FreqBodyAccStDevZ
* FreqBodyAccMeanFreqX
* FreqBodyAccMeanFreqY
* FreqBodyAccMeanFreqZ
* FreqBodyAccJerkMeanX
* FreqBodyAccJerkMeanY
* FreqBodyAccJerkMeanZ
* FreqBodyAccJerkStDevX
* FreqBodyAccJerkStDevY
* FreqBodyAccJerkStDevZ
* FReqBodyAccJerkMeanFreqX
* FreqBodyAccJerkMeanFreqY
* FreqBodyAccJerkMeanFreqZ
* FreqBodyGyroMeanX
* FreqBodyGyroMeanY
* FreqBodyGyroMeanZ
* FreqBodyGyroStDevX
* FreqBodyGyroStDevY
* FreqBodyGyroStDevZ
* FreqBodyGyroMeanFreqX
* FreqBodyGyroMeanFreqY
* FreqBodyGyroMeanFreqZ
* FreqBodyAccMagMean
* FreqBodyAccMagStDev
* FreqBodyAccMagMeanFreq
* FreqBodyBodyAccJerkMagMean
* FreqBodyBodyAccJerkMagStDev
* FreqBodyBodyAccJerkMagMeanFreq
* FreqBodyBodyGyroMagMean
* FreqBodyBodyGyroMagStDev
* FreqBodyBodyGyroMagMeanFreq
* FreqBodyBodyGyroJerkMagMean
* FreqBodyBodyGyroJerkMagStDev
* FreqBodyBodyGyroJerkMagMeanFreq
* AngletBodyAccMeanGravity
* AngletBodyAccJerkMeanGravityMean
* AngletBodyGyroMeanGravityMean
* AngletBodyGyroJerkMeanGravityMean
* AngleXGravityMean
* AngleYGravityMean
* AngleZGravityMean
