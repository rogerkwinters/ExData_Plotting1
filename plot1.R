##
## Roger K. Winters
## Exploratory Data Analysis
## plot1.R
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
png(filename = "plot1.png",
    width = 480, height = 480)
    
##
## Create the histogram
##
hist(hpctbl$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
    
##
## Shutdown the device
##
dev.off()
