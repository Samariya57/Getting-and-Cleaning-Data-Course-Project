#Reading all files

testL <- read.table("./test/y_test.txt", col.names="act")
testS<- read.table("./test/subject_test.txt", col.names="subject")
testD <- read.table("./test/X_test.txt")
trainL <- read.table("./train/y_train.txt", col.names="act")
trainS <- read.table("./train/subject_train.txt", col.names="subject")
trainD <- read.table("./train/X_train.txt")
features <- read.table("features.txt", stringsAsFactors=FALSE)
activ <- read.table("activity_labels.txt", stringsAsFactors=FALSE)


#STEP1
## Merges the training and the test sets to create one data set.

testRes<-cbind(testL,testS,testD)
trainRes<-cbind(trainL,trainS,trainD)
result<-rbind(testRes,trainRes)

# STEP2
##Extracts only the measurements on the mean and standard deviation for 
##each measurement.

FNS<-features[grep("mean\\(\\)|std\\(\\)", features$V2),]
FNS <- result[, c(1, 2, FNS$V1+2)]

#STEP3
##Uses descriptive activity names to name the activities in the data set

FNS$act <- activ[FNS$act, 2]

#STEP4
##Appropriately labels the data set with descriptive variable names.

col.names<- features[grep("mean\\(\\)|std\\(\\)", features$V2),2]
col.names <- c("activity","subject",col.names)
names(FNS) <- col.names

#STEP5
##From the data set in step 4, creates a second, independent tidy data set 
##with the average of each variable for each activity and each subject.
ind_tidy <- melt(FNS, id=c("subject","activity"))
ind_tidy <- dcast(ind_tidy, subject+activity ~ variable, mean)

##Write second independent data into file

write.table(format(ind_tidy, scientific=T), "ind_tidy.txt",
            row.names=FALSE, col.names=FALSE, quote=2)

