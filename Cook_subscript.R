## costruct cook book

cookie2<-col.names
cookie2<-gsub("^t", "Time ", cookie2)
cookie2<-gsub("^f", "Frequency ", cookie2)
cookie2<-gsub("Acc", "Accelerometer ", cookie2)
cookie2<-gsub("Gyro", "Gyroscope ", cookie2)
cookie2<-gsub("[G,g]ravity","Gravity ",cookie2)
cookie2<-gsub("Mag", "Magnitude ", cookie2)
cookie2<-gsub("BodyBody", "Body ", cookie2)
cookie2<-gsub("Body", "Body ", cookie2)
cookie2<-gsub("Jerk", "Jerk ", cookie2)
cookie2<-gsub("subject", "An identifier of the subject who carried 
              out the experiment", cookie2)
cookie2<-gsub("activity", "Activity type", cookie2)
cookie<-data.frame(col.names,cookie2)
names(cookie)<-c("Column name","Explanation")
write.table(format(cookie, scientific=T),"cookbook.txt",
            row.names=FALSE, quote=2)