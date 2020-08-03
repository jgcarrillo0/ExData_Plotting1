#plot 2
#This file must be in the directory ExData_Plotting1 for its correct reading
D2=read.table("subset.txt",sep=";",header=TRUE, na.strings="?")
D2$Time <- as.POSIXct(strptime(paste(D2$Date, D2$Time), "%d/%m/%Y %H:%M:%S"))
 
png(filename="Plot2.png", width=480, height=480)
 plot(D2$Time,D2$Global.Active.power,type="l", main="Global Active Power",xlab=NA,ylab="Global Active Power (kilowatts)")
dev.off()
