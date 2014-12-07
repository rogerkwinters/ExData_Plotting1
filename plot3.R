##
## Roger K. Winters
## Exploratory Data Analysis
## plot3.R
##

##
## Set up the environment
##
setwd("~/Coursera/Exploratory Data Analysis")

##
## Load the data
##
source("loader.R")

##
## Open the png file
##
png(filename = "plot3.png",
    width = 480, height = 480)

##
## Create the plot
##
plot(x = hpctbl$DateTime, y = hpctbl$Sub_metering_1, 
     type = "n", xlab = "", ylab = "Energy sub metering")

lines(x = hpctbl$DateTime, y = hpctbl$Sub_metering_1)
lines(x = hpctbl$DateTime, y = hpctbl$Sub_metering_2, col = "red")
lines(x = hpctbl$DateTime, y = hpctbl$Sub_metering_3, col = "blue")

legend("topright", legend = c("Sub_metering_1", 
       "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = 1)

##
## Shutdown the device
##
dev.off()