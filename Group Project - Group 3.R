#Group Project - Group 3 - David Imiruaye, Morzina Sarker, Katie Scoones

#1 - Downloading and extracting the dataset
data_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
data_folder <- "UCI HAR Dataset"

if (!dir.exists(data_folder)) {
  if (!file.exists("UCI_HAR_Dataset.zip")) {
    download.file(data_url,
                  destfile = "UCI_HAR_Dataset.zip",
                  mode = "wb")
  }
  
  unzip("UCI_HAR_Dataset.zip", exdir = ".")
}

# 2- Reading the measurement names and activity labels.
features <- read.table(
  file.path(data_folder, "features.txt"),
  stringsAsFactors = FALSE
)

activity_labels <- read.table(
  file.path(data_folder, "activity_labels.txt"),
  stringsAsFactors = FALSE
)

names(activity_labels) <- c("activity_code", "activity")

# 3 -Reading the three training files.
train_measurements <- read.table(
  file.path(data_folder, "train", "X_train.txt")
)

train_subjects <- read.table(
  file.path(data_folder, "train", "subject_train.txt")
)

train_activities <- read.table(
  file.path(data_folder, "train", "y_train.txt")
)

# 4- Reading the three test files.
test_measurements <- read.table(
  file.path(data_folder, "test", "X_test.txt")
)

test_subjects <- read.table(
  file.path(data_folder, "test", "subject_test.txt")
)

test_activities <- read.table(
  file.path(data_folder, "test", "y_test.txt")
)

# 5 - Combining the training and test rows in the same order.
all_measurements <- rbind(train_measurements, test_measurements)
all_subjects <- rbind(train_subjects, test_subjects)
all_activities <- rbind(train_activities, test_activities)


# 6 - Checking that each set has matching numbers of rows.
nrow(train_measurements)
nrow(train_subjects)
nrow(train_activities)

nrow(test_measurements)
nrow(test_subjects)
nrow(test_activities)

# 7 - Checking the combined datasets.
dim(all_measurements)
dim(all_subjects)
dim(all_activities)