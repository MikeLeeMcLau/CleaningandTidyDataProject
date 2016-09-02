#Two functions.   The first to download the data.  Seperated out because of lenght of time to download.
#Second function will merge data sets and produce final results.


DownloadData <- function() {
  #Insure directory for class is available.
  rwd <- "C:/FY2017/Mike_Classes/Data_Clearning/Work_Directory"
  #If directory is not available create directory.
  if(!file.exists(rwd)){dir.create(rwd)}
  #Set working directory.
  setwd(rwd)
  #Create a variable with the directory to download files.
  assignData <- "./assignmentData"
  #Check that if directory exists.   If not create directory.
  if(!file.exists(assignData)){dir.create(assignData)}
  #Retrieve files and unzip into working directory.
  url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  filename <- paste(assignData,"/","zipData.zip", sep="")
  download.file(url,filename,method="curl")
  unzip(zipfile=filename)
  
}

#Second function to process data and produce final results.
  
processData <- function() {
  
  #Set directory with data
  dataFile <-"C:/FY2017/Mike_Classes/Data_Clearning/Work_Directory/UCI HAR Dataset"
  #Import training data into tables
  x_train <- read.table(paste(dataFile,"/train/X_train.txt", sep=""))
  y_train <- read.table(paste(dataFile,"/train/y_train.txt", sep=""))
  subject_train <- read.table(paste(dataFile,"/train/subject_train.txt",sep=""))
  #Import testing data into tables
  x_test <- read.table(paste(dataFile,"/test/X_test.txt",sep=""))
  y_test <- read.table(paste(dataFile,"/test/y_test.txt",sep=""))
  subject_test <- read.table(paste(dataFile,"/test/subject_test.txt", sep=""))
  
  #Import features and read column labels.
  features <- read.table(paste(dataFile,"/features.txt",sep=""))
  activityLabels = read.table(paste(dataFile,"/activity_labels.txt",sep=""))     
  
  #Change column names to activity to make information clearer
  colnames(x_train) <- features[,2] 
  colnames(y_train) <-"activityId"
  colnames(subject_train) <- "subjectId"
  
  
  #Change column names to activity to make information clearer
  colnames(x_test) <- features[,2] 
  colnames(y_test) <- "activityId"
  colnames(subject_test) <- "subjectId"
  
  colnames(activityLabels) <- c('activityId','activityType')
  
  
  #Merge training and testing data into one file for each.
  mrg_train <- cbind(y_train, subject_train, x_train)
  mrg_test <- cbind(y_test, subject_test, x_test)
  #Merge all data.
  setAllInOne <- rbind(mrg_train, mrg_test)
  write.table(setAllInOne, "reviewCombinedData.txt", row.name=FALSE)
  
  
  
  colNames <- colnames(setAllInOne)
  #Get information.
  mean_and_std <- (grepl("activityId" , colNames) | grepl("subjectId" , colNames) | grepl("mean.." , colNames) | grepl("std.." , colNames))
  
  
  setForMeanAndStd <- setAllInOne[ , mean_and_std == TRUE]
  #print(setForMeanAndStd)
  
  setWithActivityNames <- merge(setForMeanAndStd, activityLabels,by='activityId',all.x=TRUE)
  
  #Create final data set.
  secTidySet <- aggregate(. ~subjectId + activityId, setWithActivityNames, mean)
  secTidySet <- secTidySet[order(secTidySet$subjectId, secTidySet$activityId),]
  
  
  #Write to a text file.
  write.table(secTidySet, "finalDataSet.txt", row.name=FALSE)
  
  

                         
  
  
  
}
  
  
  
