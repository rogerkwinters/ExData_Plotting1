##
## Roger K. Winters
## Exploratory Data Analysis
## plot4.R
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
png(filename = "plot4.png",
    width = 480, height = 480)

##
## We want a 2 row x 2 column display
##
par(mfrow = c(2, 2))

##
## Plot1 upper left
##
plot(x = hpctbl$DateTime, y = hpctbl$Global_active_power, 
     type = "l", xlab = "", ylab = "Global Active Power")

##
## Plot2 upper right
##
plot(x = hpctbl$DateTime, y = hpctbl$Voltage, 
     type = "l", xlab = "datetime", ylab = "Voltage")

##
## Plot3 lower left
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
## Plot4 lower right
##
plot(x = hpctbl$DateTime, y = hpctbl$Global_reactive_power, 
     type = "l", xlab = "datetime", ylab = "Global_reactive_power")

##
## Shutdown the device
##
dev.off()
