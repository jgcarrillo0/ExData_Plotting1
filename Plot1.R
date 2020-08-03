#plot 1
#This file must be in the directory ExData_Plotting1 for its correct reading
D1=read.table("subset.txt",sep=";",header=TRUE, na.strings="?")

png(filename="Plot1.png", width=480, height=480)
 hist(D1$Global.Active.power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()
