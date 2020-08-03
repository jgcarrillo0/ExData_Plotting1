library(reshape2)

#Preparation of the workspace and Obtaining the web data
wd=getwd()

wd1=paste(wd,"/ExData_Plotting1", sep = "")#address of the folder where it will be downloaded
#and unzip the file.
wd2=paste(wd1,"/data.zip", sep = "")#address of the data.zip file.

dataurl="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

if (!file.exists("./ExData_Plotting1")) {
        dir.create("./ExData_Plotting1")
        print("Directory created")
}else{print("directory already exists")}
if(file.exists("./ExData_Plotting1")){
        if(!file.exists("./data.zip")){
                download.file(url=dataurl, destfile=wd2)
                unzip(zipfile = wd2, exdir = wd1)
                print("downloaded and unzipped file")
        }else{print("file already exists")}
}
setwd(wd1)#Working directory where you will work.

#reading and obtaining the desired subset
dataset=read.table("./household_power_consumption.txt",sep=";", header=TRUE, na.strings="?")
Subset=subset(dataset,Date=="1/2/2007"|Date=="2/2/2007")
#Create a table with the desired set
write.table(Subset, "./Subset.txt", row.names = FALSE,sep=";")
test=read.table("Subset.txt",sep=";", header=TRUE, na.strings="?")
