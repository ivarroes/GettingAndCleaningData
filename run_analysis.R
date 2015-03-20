
## 1. Merges the training and the test sets to create one data set.
# 1.1. Read training data
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# 1.2. Read test data
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# 1.3. Combine data sets
x <- rbind(x_train, X_test)
y <- rbind(y_train, y_test)
names(y) <- c("Activity")
s <- rbind(subject_train, subject_test)
names(s) <- c("Subject")


## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 2.1. Read feature names
features <- read.table("./UCI HAR Dataset/features.txt")
names(features) <- c("id","Feature")

# 2.2. Extract measurements
x.ext <- x[,grep("mean|std", features$Feature, ignore.case=TRUE)]

# 2.3. Merge data
all.data <- cbind(x.ext, y, s)


## 3. Uses descriptive activity names to name the activities in the data set
# 3.1. Read activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
names(activity_labels) <- c("id","Activity")

# 3.2. Add activity labels
all.data$Activity <- activity_labels[all.data$Activity,2]


## 4. Appropriately labels the data set with descriptive variable names. 
# 4.1. Create names vector
names <- c(as.character(features$Feature[grep("mean|std", features$Feature, ignore.case=TRUE)]),"Activity","Subject")

# 4.2. Clean names
names <- gsub('\\(|\\)',"",names, perl = TRUE)
names <- make.names(names)

# 4.3. Update column names
names(all.data) <- names


## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy.data <- aggregate(. ~Subject + Activity, all.data, mean)

# SAve data
write.table(tidy.data, file = "tidyData.txt", row.names = FALSE)
