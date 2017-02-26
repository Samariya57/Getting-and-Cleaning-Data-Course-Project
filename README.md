# Getting-and-Cleaning-Data-Course-Project

##The goal of project

At the begining we have a raw data about some experiments. The experiments have been carried out with a group of 30 volunteers. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
(Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity.
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the 
training data and 30% the test data. 
A vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' 
for more details. 
We have to create a new tidy independent data based on experiments data. New data has to aggregate mean for every measuments 
grouped by activity and person, hence it will contain 180 rows. 

## Repository consists of following files:
* README.md 
* Run_analysis.R 
* CookBook.md
* Cook_subscript.R

##Run_analysis.R

This file contains a script which helps to collect existing data and create a new independent tidy data set

0. Reads all given files.
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable \
   for each activity and each subject.
   
##CookBook.md

Information file about variables in the new tidy data set.

##ind_tidy.txt

My final tidy data.

##Cook_subscript.R

Short script that helps to prepare features names info readable form.
