#Getting and Cleaning Data Project
This repository contains the script and data to perform the analysis project of the Course Getting and Cleaning Data 

* Data source http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

* Script:  **run_analysis.R**

The script does the following:

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each - measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

### Usage
In order to execute the script you have to download the files to a local source and setup the path

``` 
setwd("path") 
```


###Output 
The script produces a tidy cvs data set that fulfills the requirements. You can find this file in /data/.

