
# before reading and preparing the data, you should install and/or load these packages
install.packages("data.table")
library(data.table)
install.packages("dplyr")
library(dplyr)
install.packages("tidyr")
library(tidyr)



# reading activity labels and list of features
activity_labels <- fread("activity_labels.txt", data.table = FALSE)
colnames(activity_labels) <- c("activity_code", "activity")
features <- fread("features.txt", data.table = FALSE)



# reading data from test set

## reading subjects
test_subjects <- fread("test/subject_test.txt", data.table = FALSE)
colnames(test_subjects) <- c("subject")

## reading activity labels and using descriptive activity names to name the activities
test_y_labels <- fread("test/y_test.txt", data.table = FALSE)
colnames(test_y_labels) <- c("activity_code")
test_y_labels <- test_y_labels %>% left_join(activity_labels, by = "activity_code")

## reading feature vector and labeling the data with descriptive variable names
test_x_set <- fread("test/X_test.txt", data.table = FALSE)
colnames(test_x_set) <- features$V2

## binding these columns to obtain a test_data_set
test_data_set <- bind_cols(test_subjects, test_y_labels, test_x_set)
rm(test_subjects, test_y_labels, test_x_set)



# reading data from train set 

# reading subjects, activity labels and feature vector) and binding these columns
train_subjects <- fread("train/subject_train.txt", data.table = FALSE)
colnames(train_subjects) <- c("subject")

## reading activity labels and using descriptive activity names to name the activities
train_y_labels <- fread("train/y_train.txt", data.table = FALSE)
colnames(train_y_labels) <- c("activity_code")
train_y_labels <- train_y_labels %>% left_join(activity_labels, by = "activity_code")

## reading feature vector and labeling the data with descriptive variable names
train_x_set <- fread("train/X_train.txt", data.table = FALSE)
colnames(train_x_set) <- features$V2

## binding these columns to obtain a train_data_set
train_data_set <- bind_cols(train_subjects, train_y_labels, train_x_set)
rm(train_subjects, train_y_labels, train_x_set)



# merging training and test set to create one data set
data_set <- bind_rows(test_data_set, train_data_set)



# extracting only the measurements on the mean and standard deviation for each measurement
mean_and_std <- sort(c(grep("mean()", names(data_set), fixed = TRUE), grep("std()", names(data_set), fixed = TRUE)))
data_set <- data_set %>% select(1, 3, mean_and_std)



# using descriptive activity names to name the activities in the data set
## already done while reading the data sets



# labeling the data set with variable names
## already done while reading the data sets



# creating a second, independent tidy data set with the average of each variable for each activity and each subject
subjects_and_activities <- data_set %>%
  group_by(subject, activity) %>%
  summarise_all(.funs = funs(mean(.))) %>%
  ungroup() %>%
  gather(key = measurement, value = average_value, -subject, -activity) %>%
  arrange(subject, activity)



# creating txt file with write.table() using row.names = FALSE
write.table(subjects_and_activities, "tidy_data_set_Jessica.txt", row.names = FALSE)
