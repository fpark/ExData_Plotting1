#read data set from a file

source(file="LoadDataFile.R", local=TRUE)
x <- LoadDataFile()


# plot 1
hist(x$Global_active_power, 
        col="red", 
        main="Global Active Power",
        xlab="Global Active Power(kilowatts)",
        ylab="Frequency")


dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
    
