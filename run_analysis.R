#Check for Directory
if(!file.exists("./GCD")){dir.create("./GCD")}
setwd("./GCD")

#Download Zip File
fil <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fil,destfile="./Dataset.zip",method="curl")

#Unzip downloaded file
unzip(zipfile="./Dataset.zip",exdir="./")

#Read Training Data
setwd("./UCI HAR Dataset/train")
tr<-read.delim("X_train.txt",sep="",header = F)
trl<-read.table("y_train.txt",sep="\n")
str<-read.table("subject_train.txt",sep="\n")

#Read Test Data
setwd("../test")
te<-read.delim("X_test.txt",sep="",header=F)
tel<-read.table("y_test.txt",sep="\n")
ste<-read.table("subject_test.txt",sep="\n")

#Combine Training & Test Data
tr<-cbind(str,trl,tr)
te<-cbind(ste,tel,te)
dat<-rbind(tr,te)

#Add Variable names to combined dataset
setwd("../")
ftrs<-read.delim("features.txt",sep="",header = F)
name<-as.character(ftrs[,2])
colnames(dat)<-c("Subject","Labels",name)
View(dat)

#Filter dataset variables to include only Mean & SD variables
res<-grep("(.*)[Mm][Ee][Aa][Nn](.*)|(.*)[Ss][Tt][Dd](.*)",names(dat))
res<-dat[res]

#Read Activity Labels
act<-read.table("activity_labels.txt", as.is = T)
colnames(act)<-c("Labels","Activity")
View(act)

#Merge Activity labels with filtered dataset
res<-cbind(dat[,1:2],res)
res<-merge(res,act)
View(res)

#Change variable names to make them descriptive
names(res)<-gsub("^t", "Time", names(res))
names(res)<-gsub("^f", "Frequency", names(res))
names(res)<-gsub("Acc", "Accelerometer", names(res))
names(res)<-gsub("Gyro", "Gyroscope", names(res))
names(res)<-gsub("Mag", "Magnitude", names(res))
names(res)<-gsub("mean", "Mean", names(res))
names(res)<-gsub("std", "StandardDeviation", names(res))
names(res)<-gsub("BodyBody", "Body", names(res))

#View Final Clean dataset
View(res)

#Creation of independent tidy Dataset with Averages
library(dplyr)
result<-aggregate(res[,4:ncol(res)],by=list(Activity=res$Activity,Subject=res$Subject),mean)
View(result)
write.table(result,"Tidy_Data.txt",row.names=F)
