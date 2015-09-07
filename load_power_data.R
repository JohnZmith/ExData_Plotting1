## Data downloaded from:

#download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
#             destfile = "power.zip")
 

## Load data from 01/02/2007 and 02/02/2007 (the rows were checked in advance):

power <- read.table( unz("power.zip", "household_power_consumption.txt"),
                     header=FALSE, 
                     skip = 66637,
                     nrows = 2880,
                     colClasses = c("character","character",rep("numeric",7)),
                     sep=";", 
                     na.strings ="?")

colnames(power)<-unlist(read.table( unz("power.zip", "household_power_consumption.txt"),
                                    header=FALSE, 
                                    nrows = 1,
                                    sep=";" ))

rownames(power) <- 1:nrow(power)
close(unz("power.zip", "household_power_consumption.txt"))

### alternative:
#power <- read.table(unz("power.zip", "household_power_consumption.txt"),
#                    colClasses = c("character","character",rep("numeric",7)),
#                    header=TRUE, 
#                    sep=";", 
#                    na.strings ="?")
#power <- power[power$Date == "1/2/2007"|power$Date == "2/2/2007",]


# Merge the date and time into one variable:

power$datetime <- strptime(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S")
# power$Date <- NULL
# power$Time <- NULL

# write.csv(power, file="power.csv", row.names=F)