# plot3.R
# read data set from a file
source(file="LoadDataFile.R", local=TRUE)
x <- LoadDataFile()

png(file="plot3.png",  width=480, height=480)
# plot 3
plot(x$Time, x$Sub_metering_1, col="black", type="l", axes=T, xlab="", ylab="Energy Sub Metering",
     main="Plot 3")
par(new=TRUE)
plot(x$Time, x$Sub_metering_2, col="red", axes=F ,ylim=c(0,40),type="s",xlab="", ylab="")
par(new=TRUE)
plot(x$Time, x$Sub_metering_3, col="blue" , type="l", axes=F, xlab="", ylab="", ylim=c(0,40))

legend("topright",  col=c("black" , "red", "blue"), lty=c(1,1,1), trace=T, xjust=0,
       legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

# dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()
