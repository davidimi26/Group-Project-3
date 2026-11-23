
# Human Activity Recognition Using Smartphones
**Group 3:** David Imiruaye, Morzina Sarker, and Katie Scoones

## 1. Project Overview

The purpose of this project is to clean, combine, and organize data from the Human Activity Recognition Using Smartphones (UCI HAR) dataset. The dataset contains measurements collected from smartphone sensors while participants performed different physical activities.

The original dataset was divided into training and testing data. These datasets were combined into one dataset, and measurements representing the mean and standard deviation were selected. Activity codes were replaced with descriptive activity names.

A second, independent tidy dataset was created by calculating the average of each selected measurement for each subject and activity. The goal of this project was to create a clean and organized dataset that could be used for further analysis.

## 2. Data Source

The data for this project comes from the Human Activity Recognition Using Smartphones dataset from the UCI Machine Learning Repository.

The dataset contains measurements collected from 30 volunteers using smartphone sensors while they performed six different activities. The smartphones recorded data using accelerometers and gyroscopes.

The original data was split into training and testing sets, which we combined into one dataset for this project.

**Data source:** UCI Human Activity Recognition Using Smartphones Dataset

## 3. Study Participants and Activities

The dataset contains observations from 30 participants, identified by subject numbers 1 through 30.

Participants performed the following six activities:

| Activity | Description |
|---|---|
| WALKING | Participant walking on a level surface |
| WALKING_UPSTAIRS | Participant walking up stairs |
| WALKING_DOWNSTAIRS | Participant walking down stairs |
| SITTING | Participant sitting |
| STANDING | Participant standing |
| LAYING | Participant lying down |

Each observation represents a recorded measurement associated with a participant performing one of these activities.

## 4. Data Processing

The data was processed using an R script named GroupWork.R. The following steps were performed:

1. The UCI HAR dataset was downloaded and extracted.
2. The feature names and activity labels were read into R.
3. The training and testing measurement datasets were loaded.
4. The subject identifiers and activity codes from the training and testing datasets were loaded.
5. The training and testing datasets were combined into one dataset.
6. Only measurements containing mean or standard deviation information were selected.
7. Descriptive feature names were applied to the selected measurements.
8. Activity codes were replaced with descriptive activity names.
9. Subject identifiers, activity names, and measurement variables were combined into one dataset.
10. A second tidy dataset was created by calculating the average of each measurement for each subject and activity.
11. Both datasets were exported as text files.

## 5. Dataset Description

Two datasets were created as part of this project.

### 5.1 data_combined.txt

This dataset contains the combined training and testing observations after selecting the mean and standard deviation measurements and replacing activity codes with descriptive activity names.

| Attribute | Description |
|---|---|
| Number of observations | 10,299 |
| Number of variables | 68 |
| Subject variable | 1 |
| Activity variable | 1 |
| Measurement variables | 66 |

Each row represents an observation from a participant performing an activity. The measurements have been selected to include mean and standard deviation variables.

### 5.2 tidy_dataset.txt

This dataset contains the average of each selected measurement for each subject and activity.

| Attribute | Description |
|---|---|
| Number of observations | 180 |
| Number of variables | 68 |
| Number of subjects | 30 |
| Number of activities | 6 |
| Measurement variables | 66 |

Each row represents one subject performing one activity. The measurement values are averages calculated from the combined dataset.

The tidy dataset contains 180 rows because each of the 30 subjects performed six activities.

## 6. Variable Descriptions

Both datasets contain 68 variables. These include two identifying variables and 66 measurement variables.

### 6.1 Identifying Variables

| Variable | Data Type | Description |
|---|---|---|
| subject | Integer | Identifies the participant. Values range from 1 to 30. |
| activity | Character | Identifies the activity performed by the participant. |

### 6.2 Measurement Variables

The remaining 66 variables contain measurements related to body acceleration, gravity acceleration, body gyroscope measurements, and related movement measurements.

The measurements are divided into time-domain and frequency-domain variables and include mean and standard deviation values.

The original variable names were retained to preserve information about the type of measurement.

## 7. Variables

The measurement variable names contain abbreviations that describe the type of measurement and how it was calculated.

| Abbreviation | Description |
|---|---|
| t | Time-domain measurement |
| f | Frequency-domain measurement |
| BodyAcc | Body acceleration |
| GravityAcc | Gravity acceleration |
| BodyGyro | Body gyroscope measurement |
| Jerk | Change in acceleration or angular velocity |
| Mag | Magnitude of a measurement |
| mean() | Mean measurement value |
| std() | Standard deviation measurement |
| X | X-axis measurement |
| Y | Y-axis measurement |
| Z | Z-axis measurement |

The X, Y, and Z labels identify the axes associated with directional measurements. Variables containing Mag represent magnitude measurements rather than individual directional axes.

## 8. Measurement Categories

The 66 measurement variables are grouped into the following categories.

### 8.1 Time-Domain Measurements

Variables beginning with t represent time-domain measurements.

These include:

- Body acceleration measurements
- Gravity acceleration measurements
- Body acceleration jerk measurements
- Body gyroscope measurements
- Body gyroscope jerk measurements
- Magnitude measurements related to acceleration, gravity, jerk, and gyroscope data

### 8.2 Frequency-Domain Measurements

Variables beginning with f represent frequency-domain measurements.

These include:

- Body acceleration measurements
- Body acceleration jerk measurements
- Body gyroscope measurements
- Magnitude measurements related to acceleration, jerk, and gyroscope data

### 8.3 Mean Measurements

Variables containing mean() represent the mean value of the corresponding measurement.

### 8.4 Standard Deviation Measurements

Variables containing std() represent the standard deviation of the corresponding measurement. These values describe the variation in the measurement data.

## 9. Activity Variables

The activity variable contains descriptive names rather than numerical activity codes.

| Activity Name | Description |
|---|---|
| WALKING | Walking |
| WALKING_UPSTAIRS | Walking up stairs |
| WALKING_DOWNSTAIRS | Walking down stairs |
| SITTING | Sitting |
| STANDING | Standing |
| LAYING | Lying down |

The activity names were matched to their original activity codes using the activity label file provided with the dataset.

## 10. Data Cleaning and Transformation

The following transformations were performed during the data cleaning process:

- The training and testing datasets were combined into one dataset.
- Only variables containing mean or standard deviation measurements were retained.
- Measurement variables were assigned descriptive names using the original feature names.
- Activity codes were replaced with descriptive activity names.
- Subject identifiers were retained to identify each participant.
- The combined dataset was used to create the tidy dataset.

The project did not intentionally remove observations based on missing values. The training and testing datasets were combined, and the selected measurements were retained for processing.

## 11. Tidy Dataset Calculation

The tidy dataset was created using the aggregate() function in R.

The data was grouped by subject and activity, and the average of each measurement variable was calculated within each group.

The resulting dataset contains one row for each combination of subject and activity. This produces 180 observations, representing 30 subjects performing six activities.

The purpose of this transformation was to create a smaller, more organized dataset that summarizes the measurements for each participant and activity.

## 12. Measurement Units and Values

The measurement variables contain values derived from the original smartphone sensor data.

The measurements were processed and normalized in the original UCI HAR dataset. The selected mean and standard deviation variables retain the measurement values provided by the original dataset.

The measurement values are generally represented as numeric values and may be positive, negative, or zero.

The original dataset's measurement descriptions and units were retained where applicable. The project did not convert the selected measurements into new physical units.

## 13. Missing Data

The group did not intentionally remove observations based on missing values. The training and testing datasets were combined, and the selected measurements were retained for processing.

No additional missing-data removal procedure was performed as part of the data cleaning process.

## 14. Instructions for Running the Script

To reproduce the datasets:

1. Download or clone the project repository from GitHub.
2. Open the GroupWork.R file in R or RStudio.
3. Run the entire script from beginning to end.
4. The script will download and extract the original UCI HAR dataset if it is not already available.
5. The script will process and combine the data.
6. The script will create data_combined.txt and tidy_dataset.txt in the current working directory.

The script requires an internet connection the first time it downloads the original dataset.

## 15. Analysis Description

The focus of this project was cleaning, organizing, and preparing the data rather than performing statistical analysis or hypothesis testing.

Combining the training and testing data made it possible to work with all the observations in one dataset. The tidy dataset summarizes the measurements for each subject and activity, making it easier to compare the different activities and sensor measurements.

The datasets could also be used for future analysis of physical activity, movement patterns, and differences between activities.
