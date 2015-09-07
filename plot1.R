
# The dataframe will be loaded into the variable "power" and date and time will
# be merged into a date format variable "datetime":

source("load_power_data.R")
 

#### Plot 1

# Open png-device:

png( filename = "plot1.png",
     height = 480,
     width = 480,
     units = "px",
     bg = "white"
)

# the actual plot:

hist(power$Global_active_power, 
     col="red",
     main ="Global Active Power",
     xlab ="Global Active Power (kilowatts)"
     # breaks = 12, 
     # ylim = c(0, 1200), 
     # xlim =c(0,6)
)

#close device

dev.off()

