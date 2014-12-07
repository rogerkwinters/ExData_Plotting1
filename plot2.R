##
## Roger K. Winters
## Exploratory Data Analysis
## plot2.R
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
png(filename = "plot2.png",
    width = 480, height = 480)

##
## Create the plot
##

plot(x = hpctbl$DateTime, y = hpctbl$Global_active_power,
     type="l", ylab="Global Active Power (kilowatts)", xlab="")

##
## Shutdown the device
##
dev.off()
