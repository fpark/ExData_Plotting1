#read data set from a file
source(file="LoadDataFile.R", local=TRUE)
x <- LoadDataFile()

# plot 2
plot(x$Time, x$Global_active_power, type="l", 
     xlab="", ylab="Global Active Power (killowatts)", 
     main="Plot 2")


dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()

