This is the class assignment for the class Getting and Cleaning Data.

The data in the project is based on original data from the below project.

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

Original data can be downloaded at.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


The below files are included.

1. Readme.txt - This file
2. CodeBook.txt - An overview of the run_analysis.R file.
3. run_analysis.R - R script to convert the original data to the project requested data.
4. finalDataSet.txt - Final data which includes all subject (both training and testing) results and aggrated data.

finalDataSet.txt file structure

subjectId	Subject ID from original file - subject_train.txt and subject_text.txt
activityId	Activity from activity_labels.txt
tBodyAcc-mean()-X	Labels assigned from features.txt in order
tBodyAcc-mean()-Y	Labels assigned from features.txt in order
tBodyAcc-mean()-Z	Labels assigned from features.txt in order
tBodyAcc-std()-X	Labels assigned from features.txt in order
tBodyAcc-std()-Y	Labels assigned from features.txt in order
tBodyAcc-std()-Z	Labels assigned from features.txt in order
tGravityAcc-mean()-X	Labels assigned from features.txt in order
tGravityAcc-mean()-Y	Labels assigned from features.txt in order
tGravityAcc-mean()-Z	Labels assigned from features.txt in order
tGravityAcc-std()-X	Labels assigned from features.txt in order
tGravityAcc-std()-Y	Labels assigned from features.txt in order
tGravityAcc-std()-Z	Labels assigned from features.txt in order
tBodyAccJerk-mean()-X	Labels assigned from features.txt in order
tBodyAccJerk-mean()-Y	Labels assigned from features.txt in order
tBodyAccJerk-mean()-Z	Labels assigned from features.txt in order
tBodyAccJerk-std()-X	Labels assigned from features.txt in order
tBodyAccJerk-std()-Y	Labels assigned from features.txt in order
tBodyAccJerk-std()-Z	Labels assigned from features.txt in order
tBodyGyro-mean()-X	Labels assigned from features.txt in order
tBodyGyro-mean()-Y	Labels assigned from features.txt in order
tBodyGyro-mean()-Z	Labels assigned from features.txt in order
tBodyGyro-std()-X	Labels assigned from features.txt in order
tBodyGyro-std()-Y	Labels assigned from features.txt in order
tBodyGyro-std()-Z	Labels assigned from features.txt in order
tBodyGyroJerk-mean()-X	Labels assigned from features.txt in order
tBodyGyroJerk-mean()-Y	Labels assigned from features.txt in order
tBodyGyroJerk-mean()-Z	Labels assigned from features.txt in order
tBodyGyroJerk-std()-X	Labels assigned from features.txt in order
tBodyGyroJerk-std()-Y	Labels assigned from features.txt in order
tBodyGyroJerk-std()-Z	Labels assigned from features.txt in order
tBodyAccMag-mean()	Labels assigned from features.txt in order
tBodyAccMag-std()	Labels assigned from features.txt in order
tGravityAccMag-mean()	Labels assigned from features.txt in order
tGravityAccMag-std()	Labels assigned from features.txt in order
tBodyAccJerkMag-mean()	Labels assigned from features.txt in order
tBodyAccJerkMag-std()	Labels assigned from features.txt in order
tBodyGyroMag-mean()	Labels assigned from features.txt in order
tBodyGyroMag-std()	Labels assigned from features.txt in order
tBodyGyroJerkMag-mean()	Labels assigned from features.txt in order
tBodyGyroJerkMag-std()	Labels assigned from features.txt in order
fBodyAcc-mean()-X	Labels assigned from features.txt in order
fBodyAcc-mean()-Y	Labels assigned from features.txt in order
fBodyAcc-mean()-Z	Labels assigned from features.txt in order
fBodyAcc-std()-X	Labels assigned from features.txt in order
fBodyAcc-std()-Y	Labels assigned from features.txt in order
fBodyAcc-std()-Z	Labels assigned from features.txt in order
fBodyAcc-meanFreq()-X	Labels assigned from features.txt in order
fBodyAcc-meanFreq()-Y	Labels assigned from features.txt in order
fBodyAcc-meanFreq()-Z	Labels assigned from features.txt in order
fBodyAccJerk-mean()-X	Labels assigned from features.txt in order
fBodyAccJerk-mean()-Y	Labels assigned from features.txt in order
fBodyAccJerk-mean()-Z	Labels assigned from features.txt in order
fBodyAccJerk-std()-X	Labels assigned from features.txt in order
fBodyAccJerk-std()-Y	Labels assigned from features.txt in order
fBodyAccJerk-std()-Z	Labels assigned from features.txt in order
fBodyAccJerk-meanFreq()-X	Labels assigned from features.txt in order
fBodyAccJerk-meanFreq()-Y	Labels assigned from features.txt in order
fBodyAccJerk-meanFreq()-Z	Labels assigned from features.txt in order
fBodyGyro-mean()-X	Labels assigned from features.txt in order
fBodyGyro-mean()-Y	Labels assigned from features.txt in order
fBodyGyro-mean()-Z	Labels assigned from features.txt in order
fBodyGyro-std()-X	Labels assigned from features.txt in order
fBodyGyro-std()-Y	Labels assigned from features.txt in order
fBodyGyro-std()-Z	Labels assigned from features.txt in order
fBodyGyro-meanFreq()-X	Labels assigned from features.txt in order
fBodyGyro-meanFreq()-Y	Labels assigned from features.txt in order
fBodyGyro-meanFreq()-Z	Labels assigned from features.txt in order
fBodyAccMag-mean()	Labels assigned from features.txt in order
fBodyAccMag-std()	Labels assigned from features.txt in order
fBodyAccMag-meanFreq()	Labels assigned from features.txt in order
fBodyBodyAccJerkMag-mean()	Labels assigned from features.txt in order
fBodyBodyAccJerkMag-std()	Labels assigned from features.txt in order
fBodyBodyAccJerkMag-meanFreq()	Labels assigned from features.txt in order
fBodyBodyGyroMag-mean()	Labels assigned from features.txt in order
fBodyBodyGyroMag-std()	Labels assigned from features.txt in order
fBodyBodyGyroMag-meanFreq()	Labels assigned from features.txt in order
fBodyBodyGyroJerkMag-mean()	Labels assigned from features.txt in order
fBodyBodyGyroJerkMag-std()	Labels assigned from features.txt in order
fBodyBodyGyroJerkMag-meanFreq()	Labels assigned from features.txt in order
activityType	Subject ID from original file - y_train.txt and x_text.txt
