# plot4.R
# read data set from a file
source(file="LoadDataFile.R", local=TRUE)
x <- LoadDataFile()


# Start plot
png(file="plot4.png", width=480, height=480)
par(mfrow=c(2,2), mar=c(2,2,2,2), oma=c(0,0,2,0))

# plot 1
plot(x$Time, x$Global_active_power, type="l", 
      ylab="Global Active Power (kilowatts)", xlab="")

# plot 2 voltage   Voltage
plot(x$Time, x$Voltage, type="l", 
     ylab="Voltage", xlab="datetime")

# plot 3
plot(x$Time, x$Sub_metering_1, col="black", type="l", axes=T, xlab="", ylab="Energy Sub Metering")
par(new=TRUE)
plot(x$Time, x$Sub_metering_2, col="red", axes=F ,ylim=c(0,40),type="s",xlab="", ylab="")
par(new=TRUE)
plot(x$Time, x$Sub_metering_3, col="blue" , type="l", axes=F, xlab="", ylab="", ylim=c(0,40))

legend("topright",  col=c("black" , "red", "blue"),  lty=c(1,1,1), trace=T, xjust=0,
       legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), text.font=0.75)


# plot 4 global reactive power
plot(x$Time, x$Global_reactive_power, type="l", 
      ylab="Global Reactive Power", xlab="datetime")


dev.off()
