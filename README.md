
#Group Project - Group 3 - David Imiruaye, Morzina Sarker, Katie Scoones



##Project Overview

This project cleans the Human Activity Recognition Using
Smartphones dataset. We combine the training and test data,
keep the mean and standard deviation measurements, then add
descriptive names, and overall calculate averages for each subject
and activity.



## Files

- GroupWork.R: Runs the data preparation.
- CodeBook.md: Explains the variables and cleaning steps.
- cleaned_measurements.txt: Contains the combined, selected
  measurements.
- tidy_averages.txt: Contains the measurement averages for
  each subject and activity.
  
  The two text datasets are created after the complete script runs.
  
  
  
## How to run

1. Open Group Project - Group 3.R in RStudio.
2. Select Session > Set Working Directory >
   To Source File Location.
3. Install reshape2 once by running:
   install.packages("reshape2")
4. Click Source to run the complete script.
  
The script will download and extract the source data if it needs to.

## How the script works 
1. Merge training and test data (steps 1-7) Downloads the dataset, reads training and test files, and combines them into one dataset. 
2. Extract relevant measurements (steps 8-12) Keeps only the mean and standard deviation measurements.
3. Descriptive Activity Names (steps 13-16) Replaces the activity codes with activity names and joins the subject, measurements, and activity into a measurement table. 
4. Label Data with descriptive names
5. Create tidy data

## Expected results  

Altogether, the source measurements contain 10,299 rows and 561 measruement
columns.

The cleaned dataset also contains 10,299 rows and 68 columns. There is a
singular row dedicated to each subject and subject activity.


## Data source
Human Activity Recognition Using Smartphones dataset (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 
The download link is included in GroupWork.R.
