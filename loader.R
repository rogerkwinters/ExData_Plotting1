##
## Roger K. Winters
## Exploratory Data Analysis
##

##
## Set up the environment
##
setwd("~/Coursera/Exploratory Data Analysis")

##
## Download the data
##
if(!file.exists("./household_power_consumption.txt")) {
        fileUrl <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(fileUrl, destfile = "./hpc.zip", mode = "wb")
        unzip("hpc.zip")
}

##
## Use system egrep to extract only the dates we need
##
system("egrep '^1/2/2007|^2/2/2007' household_power_consumption.txt >hpc.txt")

##
## Read in the data and rename the column names
##
hpctbl <- read.table("hpc.txt", header = FALSE, sep = ";")
hpctblhdr <- read.table("household_power_consumption.txt", header = TRUE, nrows = 1, sep = ";")
colnames(hpctbl) <- names(hpctblhdr)

##
## Add a POSIX DateTime column to make it easier to deal with the data
##
hpctbl$Date <- as.Date(hpctbl$Date, format="%d/%m/%Y")
hpctbl$DateTime <- as.POSIXct(paste(as.Date(hpctbl$Date), hpctbl$Time))



