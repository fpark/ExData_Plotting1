# LoadDataFile.R
# Load Data File for Project #4-1
# Last Modifed 5/9/15, FP
# To Do: make this function more reusable later...


LoadDataFile <- function()
{ 
    setwd("C:/data/4-Explore-Data")
    argDataFile <- "data/household_power_consumption.txt"
    argSep <- ";" 
    argHeader <- TRUE 
    argStringsAsFactor <- FALSE
    argDates <- c("2007-02-01", "2007-02-02") 
        
    d <- read.table(argDataFile, 
                    sep=argSep, 
                    header=argHeader, 
                    stringsAsFactors=argStringsAsFactor)
    
    # convert first date column
    d[,1] <- as.Date(d[,1], format="%d/%m/%Y")
    
    # select dates
    x <-subset(d, d$Date== "2007-02-01" |d$Date== "2007-02-02")
 
    
    # paste date + time to create datetime col with PST, data from UCI
    t <- strptime(paste(as.character(x[,1]), x[,2],  sep=" "),
                  "%Y-%m-%d %H:%M:%S",
                  tz=Sys.timezone())
    # convert Time col to datetime (POSIXlt)
    x$Time <- t
    # set rest of columns as numeric
    x[,3] <- as.numeric(x[,3])
    x[,4] <- as.numeric(x[,4])
    x[,5] <- as.numeric(x[,5])
    x[,6] <- as.numeric(x[,6])
    x[,7] <- as.numeric(x[,7])
    x[,8] <- as.numeric(x[,8])
    x[,9] <- as.numeric(x[,9])
    
    x;
}



