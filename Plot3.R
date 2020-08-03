#plot 3
#This file must be in the directory ExData_Plotting1 for its correct reading
D3=read.table("subset.txt",sep=";",header=TRUE, na.strings="?")
D3$Time <- as.POSIXct(strptime(paste(D3$Date, D3$Time), "%d/%m/%Y %H:%M:%S"))

t=D3$Time
x=D3$Sub.Metering.1
y=D3$Sub.Metering.2
z=D3$Sub.Metering.3

png(filename="Plot3.png", width=480, height=480)
 plot(t,x, type="n", ylab = "Energy sub metering", xlab=NA)
  points(t,x,type="l",col="black")
  points(t,y,type="l",col="red")
  points(t,z,type="l",col="blue")
  legend("topright",legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"), col=c("black", "red", "blue"), lwd=1)
dev.off()
