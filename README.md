# GettingAndCleaningData-CourseProject
## This file contains:
  - background
  - explenation about the data
  - explenation about the run_analysis.R in this repo

## backround: 
this is a courseprect for tor the GettingAndCleaningData course in the Data Science Specialization.
The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The data data files for the project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

###For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

###The dataset includes the following files:
- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

## explanation about the data
can be found in the code book in this repo

## explenation about the run_analysis.R in this repo

First of all you shuold make sure you have the Samsung data is in your working directory.
The script uses functions from the "Dplyr" and "reshape2" packages
The first part of the code download al the relevant data into R.
This proces contanes matching between the column names to the measurment data.
Beacuse the data is devided to two random groups - the "test" and the "train" groups,
the proces is executed seperately for each group.

The second part of the code combines the two data sets using rbind.
and to this combined data frame I merge the Activity name based on the lable column.

The third part of the code filters only the mean and standard diviation measors.
In order to do that, I've created a logical vectors to find them, and later use those vectors to filter the combined dataframe.

The last part is using functions from the reshape2 package to culculate the average a long the two ID variables - subject number and Activity.
The first function is melt, used to defined which of the dataset's variables are "id", and which are measures.
The second function is dcast, used to aplly a function to all the varibles along the defined "id" columns

After my Tidy Data set is ready I write it to a text File


