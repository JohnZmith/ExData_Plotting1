
# The dataframe will be loaded into the variable "power" and date and time will
# be merged into a date format variable "datetime":


source("load_power_data.R") 

# The following is used to set the date/time in english for windows OS: 
Sys.setlocale("LC_TIME", "English")


#### Plot 3


# Open png-device:

png( filename = "plot3.png",
     height = 480,
     width = 480,
     units = "px",
     bg = "transparent" #"white"?
)


attach(power)

plot(x=datetime, y=Sub_metering_1,
     type="l", col="black",
     main ="",
     xlab ="",
     ylab ="Energy sub metering",
)
lines(x=datetime, y=Sub_metering_2, col="red")
lines(x=datetime, y=Sub_metering_3, col="blue")
legend("topright", legend= names(power)[7:9], lty=1,
       col=c("black","red","blue"))

#close device

dev.off()

