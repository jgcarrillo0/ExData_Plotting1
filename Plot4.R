#plot 4
#This file must be in the directory ExData_Plotting1 for its correct reading
D4=read.table("subset.txt",sep=";",header=TRUE, na.strings="?")
D4$Time <- as.POSIXct(strptime(paste(D4$Date, D4$Time), "%d/%m/%Y %H:%M:%S"))

t=D4$Time
ga=D4$Global.Active.power
v=D4$Voltage
gr=D4$Global.Reactive.Power
x=D4$Sub.Metering.1
y=D4$Sub.Metering.2
z=D4$Sub.Metering.3

png(filename="Plot4.png", width=480, height=480)
par(mfrow=c(2,2))
#plot 1
 plot(t,ga,type="l",xlab=NA,ylab="Global Active Power (kilowatts)")
#plot 2
 plot(t,v, type="l",xlab="datatime",ylab="Voltage")
#plot 3
 plot(t,x, type="n",xlab=NA,ylab = "Energy sub metering")
   points(t,x,type="l",col="black")
   points(t,y,type="l",col="red")
   points(t,z,type="l",col="blue")
   legend("topright",legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"), col=c("black", "red", "blue"), lwd=1)
#plot 4   
 plot(t,gr,type="l",xlab="datatime",ylab = "Global Reactive Power")
dev.off()

