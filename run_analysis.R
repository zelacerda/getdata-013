# Script for extract, clean and transform data into tidy data

# First, we will read all needed data files and create correspondent data frames
message("Reading all needed data... ", appendLF = FALSE)

measures_test <- read.table("./test/X_test.txt")
measures_train <- read.table("./train/X_train.txt")
labels_test <- read.table("./test/y_test.txt")
labels_train <- read.table("./train/y_train.txt")
subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")

features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

message("DONE")

# Now we will merge test and train data frames for measures, labels and subjects
message("Merging data frames... ", appendLF = FALSE)

measures <- rbind(measures_test, measures_train)
labels <- rbind(labels_test, labels_train)
subjects <- rbind(subject_test, subject_train)

message("DONE")

# The analysis will need only mean() and std() measures. So we can create a filter index for these columns.
message("Applying filter to measures data frame... ", appendLF = FALSE)

features_filter <- features[grep("[Mm]ean\\(\\)|[Ss]td\\(\\)", features$V2), ]
measures_filtered <- measures[ ,features_filter$V1]

message("DONE")

# The next step is to use descriptive activity names and labels the data sets with it
# Here we will also merge columns for subjects and activities
message("Merging and labeling data set with descriptive variable names... ", appendLF = FALSE)

labels$V1 <- activity_labels$V2[labels$V1]
names(measures_filtered) <- features_filter$V2
names(labels) <- "activity"
names(subjects) <- "subject"
result1 <- cbind(subjects, labels, measures_filtered)

message("DONE")

# Ordering the data set by subject and activity
result1 <- result1[order(result1$subject, result1$activity), ]

# Result2 is the tidy data set with the average of each measures by subject and activity
result2 <- aggregate(result1[3:68], by = result1[1:2], FUN = mean)

write.table(result2, "result.txt", row.names = FALSE)
message("File 'result.txt' created. Have a nice analysis!")
