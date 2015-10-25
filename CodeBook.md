Overview
========

This code book documents the variables for the Getting and Cleaning Data
course project. Information on the original data can be found at:
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

-   Values of Varible Activity consist of data from “Y\_train.txt” and
    “Y\_test.txt”
-   values of Varible Subject consist of data from “subject\_train.txt”
    and subject\_test.txt"
-   Values of Varibles Features consist of data from “X\_train.txt” and
    “X\_test.txt”
-   Names of Varibles Features come from “features.txt”
-   levels of Varible Activity come from “activity\_labels.txt”

The identifiers in the extracted tidy data set are as follows:

List of Tidy Data Variables
===========================

"Activies" The activities that were measured in the study - I found
these to be explicitly specific as given so didn't change them. They
are: "WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING STANDING,
LAYING""

"Subject" - Subject number 1 thru 30 - the subject identifiers from
which measurements were obtained.

The following identifiers are for the actual measurements. I removed
many of the abreviations from the original study and replaced them with
their more descriptive full words. I made the followning substitutions:

-   "t" with "time",
-   "f" with "frequency"
-   "Acc" wotj "Accelerometer"
-   "Gyro" with "Gyroscope"
-   "Mag" with "Magnitude"
-   "BodyBody", "Body"
-   "mean", "Mean"
-   "std" with "Std"
-   "-" - removed
-   "(" - removed
-   ")" - removed

The resulting identifiers are descriptive enough to need no further
explanation. I could find no documentation of measurement units.

    "timeBodyAccelerometerMeanX"
    "timeBodyAccelerometerMeanY"
    "timeBodyAccelerometerMeanZ"
    "timeGravityAccelerometerMeanX"
    "timeGravityAccelerometerMeanY"
    "timeGravityAccelerometerMeanZ"
    "timeBodyAccelerometerJerkMeanX"
    "timeBodyAccelerometerJerkMeanY"
    "timeBodyAccelerometerJerkMeanZ"
    "timeBodyGyroscopeMeanX"
    "timeBodyGyroscopeMeanY"
    "timeBodyGyroscopeMeanZ"
    "timeBodyGyroscopeJerkMeanX"
    "timeBodyGyroscopeJerkMeanY"
    "timeBodyGyroscopeJerkMeanZ"
    "timeBodyAccelerometerMagnitudeMean"
    "timeGravityAccelerometerMagnitudeMean"
    "timeBodyAccelerometerJerkMagnitudeMean"
    "timeBodyGyroscopeMagnitudeMean"
    "timeBodyGyroscopeJerkMagnitudeMean"
    "frequencyBodyAccelerometerMeanX"
    "frequencyBodyAccelerometerMeanY"
    "frequencyBodyAccelerometerMeanZ"
    "frequencyBodyAccelerometerJerkMeanX"
    "frequencyBodyAccelerometerJerkMeanY"
    "frequencyBodyAccelerometerJerkMeanZ"
    "frequencyBodyGyroscopeMeanX"
    "frequencyBodyGyroscopeMeanY"
    "frequencyBodyGyroscopeMeanZ"
    "frequencyBodyAccelerometerMagnitudeMean"
    "frequencyBodyAccelerometerJerkMagnitudeMean"
    "frequencyBodyGyroscopeMagnitudeMean"
    "frequencyBodyGyroscopeJerkMagnitudeMean"
    "timeBodyAccelerometerStdX"
    "timeBodyAccelerometerStdY"
    "timeBodyAccelerometerStdZ"
    "timeGravityAccelerometerStdX"
    "timeGravityAccelerometerStdY"
    "timeGravityAccelerometerStdZ"
    "timeBodyAccelerometerJerkStdX"
    "timeBodyAccelerometerJerkStdY"
    "timeBodyAccelerometerJerkStdZ"
    "timeBodyGyroscopeStdX"
    "timeBodyGyroscopeStdY"
    "timeBodyGyroscopeStdZ"
    "timeBodyGyroscopeJerkStdX"
    "timeBodyGyroscopeJerkStdY"
    "timeBodyGyroscopeJerkStdZ"
    "timeBodyAccelerometerMagnitudeStd"
    "timeGravityAccelerometerMagnitudeStd"
    "timeBodyAccelerometerJerkMagnitudeStd"
    "timeBodyGyroscopeMagnitudeStd"
    "timeBodyGyroscopeJerkMagnitudeStd"
    "frequencyBodyAccelerometerStdX"
    "frequencyBodyAccelerometerStdY"
    "frequencyBodyAccelerometerStdZ"
    "frequencyBodyAccelerometerJerkStdX"
    "frequencyBodyAccelerometerJerkStdY"
    "frequencyBodyAccelerometerJerkStdZ"
    "frequencyBodyGyroscopeStdX"
    "frequencyBodyGyroscopeStdY"
    "frequencyBodyGyroscopeStdZ"
    "frequencyBodyAccelerometerMagnitudeStd"
    "frequencyBodyAccelerometerJerkMagnitudeStd"
    "frequencyBodyGyroscopeMagnitudeStd"
    "frequencyBodyGyroscopeJerkMagnitudeStd"
