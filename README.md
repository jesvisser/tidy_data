# tidy_data
Getting and Cleaning Data Course Project

Dear Coursera students,
This repo contains the R script run_analysis.R, which prepares a tidy data set that can be used for later analysis. This document describes how this script works in 7 steps.

### Is the result tidy data?
This script will create a data set that contains for each activity and each subject the averages of all measurements. It's a narrow (or long) data set which means it has the following columns:
- subject
- activity
- measurement
- average value of this measurement

You might say this data is not tidy since multiple variables are in one column "measurement". However, this is how Hadley Wickham describes tidy data in his paper (check out http://vita.had.co.nz/papers/tidy-data.pdf). Because in this way, each row reflects one observation, and the data can easily be used and filtered for later analysis.
Please check it out instead of grading me down like I read in the disscussion forum: https://www.coursera.org/learn/data-cleaning/discussions/weeks/4/threads/ScC2-3D-Eeef9gqr6-XlOA

### Step 1: install packages
Please install and/or load the packages "dplyr", "data.table" and "tidyr" since I will be using some of their functions.

### Step 2: Reading general data
Import the activity codes and descriptions and import feature information. This data will be used in next steps

### Step 3: Reading the test data
- import the subjects
- import the labels and match them with the activity descriptions
- import the test data and set the feature information as column names
- bind these 3 data sets together

### Step 4: Reading the train data
- import the subjects
- import the labels and match them with the activity descriptions
- import the train data and set the feature information as column names
- bind these 3 data sets together

### Step 5: Merge train and test set
All labels and column names have been set in previous steps. So now the function bind_rows will safely combine the test and train data.

### Step 6: Extract only the measurements on the mean and standard deviation
After recognizing these specific columns with the grep() function, we can select only these columns with the select() function and proceed our data preperations.

### Step 7: creating a second, independent tidy data set
This independent tidy data set contains for each activity and each subject the averages of all measurements.
- the averages for all measurements are created by applying the summarise_all() function
- with the gather() function we create a long data set for which each record reflects an observation. (Please check out my explanation in the "Is the result tidy data?"-section of this document.


