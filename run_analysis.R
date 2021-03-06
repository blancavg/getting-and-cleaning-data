setwd("/home/blancavg/coursera/getcleandata/project/")

###############################################################################
# 1. Merge the training and the test sets to create one data set
###############################################################################
# Read the test file from a local source
test <- read.table("./data/test/X_test.txt") 
nrow(test) #2947
ncol(test) #561

# Read the train file from a local source
train <- read.table("./data/train/X_train.txt")
nrow(train) #7352
ncol(train) #561   

# Merge train and test files
total <- rbind(train, test) 
nrow(total) #10299
ncol(total) #561

###############################################################################
# 2 Extract only the measurements on the mean and standard deviation for each 
# measurement
###############################################################################
# Read the features file from a local source
features <- read.table("./data/features.txt")
nrow(features) #561  Checked. It has the same size as the train and test files.
ncol(features) #2

# Extract the index of "mean" and "std" features
index <- grep("Mean|std",features$V2,ignore.case=T)
length(index)  # 86 features will remain

# Add column names (features) to the merged (train+test) file
colnames(total) <- features$V2

# Keep only the indexed variables (those that include mean and standard deviation)
onlyMS <- total[c(index)]
ncol(onlyMS) # 86  number of columns - checked

###############################################################################
# 3. Use descriptive activity names to name the activities in the data set
###############################################################################
# Load the train activity file
ytrain <- read.table("./data/train/y_train.txt")

# Load the test activity file
ytest <- read.table("./data/test/y_test.txt")
activity <- rbind(ytrain, ytest) # same order of the merged file (train+test)

colnames(activity) <- c("Activity") # add variable name
activity
nrow(activity) #10299 checked
names(activity) # "V1"
as.character(activity$Activity)  # Transform numbers to characters

# Replace the numbers with descriptive activity names
activity1 <- sub("1","walking",activity$Activity)
activity2 <- sub("2","walking.upstairs",activity1)
activity3 <- sub("3","walking.downstairs",activity2)
activity4 <- sub("4","sitting",activity3)
activity5 <- sub("5","standing",activity4)
Activity <- sub("6","laying",activity5)
Activity  # Transformed column

Activity <- data.frame(Activity) # Return to data.frame
nrow(Activity) #10299 Checked
Activity

# Add activity column to data set
temp <- cbind(Activity,onlyMS)
names(temp)
ncol(temp) # 87 number of columns - checked (+1 column)
nrow(temp) # 10299

# Load the train subject file
subjtrain <- read.table("./data/train/subject_train.txt")
# Load the test subject file
subjtest <- read.table("./data/test/subject_test.txt")
subject <- rbind(subjtrain, subjtest) # merge files
colnames(subject) <- c("Subject") # add variable name

# Add user column to data set
temp <- cbind(subject,temp)
names(temp)
ncol(temp) # 88 number of columns - checked (+1 column)
nrow(temp) # 10299

###############################################################################
# 4. Appropriately label the data set with descriptive variable names 
###############################################################################
headers <- colnames(temp) # transform to character
grep("tBody",headers)
headers1 <- sub("tBody","Time.Body",headers)
headers2 <- sub("BodyAcc","BodyAccel",headers1)
headers3 <- sub("-mean\\(\\)-",".Mean.",headers2)
headers4 <- sub("-std\\(\\)-",".Std.",headers3)
headers5 <- sub("tGravity","Time.Gravity",headers4)
headers6 <- sub("GravityAcc","GravityAccel",headers5)
headers7 <- sub("Mag-mean\\(\\)","Magnitude.Mean",headers6)
headers8 <- sub("Mag-std\\(\\)","Magnitude.Std",headers7)
headers9 <- sub("fBody","Frequency.Body",headers8)
headers10 <- sub("-meanFreq\\(\\)-",".Mean.Frequency.",headers9)
headers11 <- sub("-meanFreq\\(\\)",".Mean.Frequency",headers10)
headers12 <- sub("angle\\(","Angle.",headers11)
headers13 <-  sub(",",".",headers12)
headers14 <-  sub(")","",headers13)
headers15 <-  sub("gravity","Gravity",headers14)

# Add new column names (features) to the temp file
colnames(temp) <- headers15
names(temp)

# Find the mean activity depending on Subject
tidy <- aggregate(. ~ temp$Subject + temp$Activity, data = temp, FUN=mean)
#  (Help from the forum) i.e. "Aggregate everything in the data frame except 
# what's after the tilde, by subject and activity"
tidy[,"temp$Subject"]  <- NULL
tidy[,"Activity"]  <- NULL
colnames(tidy)[1] <- "Activity"
nrow(tidy)
ncol(tidy)

# Write to file
write.table(tidy, "./data/tidy.txt",col.names= TRUE,row.names=FALSE,sep=",")
