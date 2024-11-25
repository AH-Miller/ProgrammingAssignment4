# Install required packages
library(dplyr)
library(readr)

# Read activity and feature names
features <- read.table("features.txt")[, 2]
activities <- read.table("activity_labels.txt",
                         col.names = c('activity label', 'activity name'))

# Extract measurements on the mean and standard deviation for each measurement
features_required <- grep("(mean|std)\\(\\)", features)

# Read train set
# Uses 'features' to provide descriptive variable names
X_train <- read.table("train/X_train.txt",
                      col.names = features)[, features_required]
subjects_train <- read.table("train/subject_train.txt",
                             col.names = c('subject'))
activities_train <- read.table("train/y_train.txt",
                               col.names = c('activity'))
train_data <- cbind(subjects_train, activities_train, X_train)

# Read test set
X_test <- read.table("test/X_test.txt",
                     col.names = features)[, features_required]
subjects_test <- read.table("test/subject_test.txt",
                            col.names = c('subject'))
activities_test <- read.table("test/y_test.txt",
                              col.names = c('activity'))
test_data <- cbind(subjects_test, activities_test, X_test)

# Merge the training and the test sets to create one data set
combined_data <- rbind(train_data, test_data)

# Name the activities in the data set
combined_data <- combined_data %>%
  left_join(activities, by = c("activity" = "activity.label")) %>%
  mutate(activity = activity.name) %>%
  select(-activity.name)

# Tidy up variable names
colnames(combined_data) <- gsub("\\.+", ".", colnames(combined_data))
colnames(combined_data) <- gsub("\\.$", "", colnames(combined_data))

# Create a second, independent tidy data set with the average of each variable
# for each activity and each subject.
summary_data <- combined_data %>%
  group_by(subject, activity) %>%
  summarise(across(everything(), mean))
  
# Save the final data set for submission
write.table(summary_data, "summary_data.txt", row.name=FALSE)