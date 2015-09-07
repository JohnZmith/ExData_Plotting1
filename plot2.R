
# The dataframe will be loaded into the variable "power" and date and time will
# be merged into a date format variable "datetime":


source("load_power_data.R") 

# The following is used to set the date/time in english for windows OS: 
Sys.setlocale("LC_TIME", "English")


#### Plot 2

# Open png-device:

png( filename = "plot2.png",
     height = 480,
     width = 480,
     units = "px",
     bg = "transparent" #"white"?
)


plot(x=power$datetime, y=power$Global_active_power,
     type="l",
     main ="",
     xlab ="",
     ylab ="Global Active Power (kilowatts)",
     # ylim = c(0,8)
)

#close device

dev.off()

