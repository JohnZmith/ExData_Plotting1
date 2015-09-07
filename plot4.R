
# The dataframe will be loaded into the variable "power" and date and time will
# be merged into a date format variable "datetime":


source("load_power_data.R") 

# The following is used to set the date/time in english for windows OS: 
Sys.setlocale("LC_TIME", "English")


#### Plot 4

attach(power)

# Open png-device:

png( filename = "plot4.png",
     height = 480,
     width = 480,
     units = "px",
     bg = "white"
)


# overall parameters:
par(mfcol=c(2,2), mar=c(4,4,2,2))

#plot top left
plot(x=datetime, y=Global_active_power,
     type="l",
     main ="",
     xlab ="",
     ylab ="Global Active Power"
     # ylim = c(0,8)
)

#plot bottom left
plot(x=datetime, y=Sub_metering_1,
     type="l", col="black",
     main ="",
     xlab ="",
     ylab ="Energy sub metering"
)
lines(x=datetime, y=Sub_metering_2, col="red")
lines(x=datetime, y=Sub_metering_3, col="blue")
legend("topright", legend= names(power)[7:9], lty=1, bty = "n",
       col=c("black","red","blue"))

#plot top right

plot(x=datetime, y=Voltage,
     type="l", col="black",
     main ="",
    # xlab ="datetime",
     ylab ="Voltage"
)



#plot bottom right

plot(x=datetime, y=Global_reactive_power,
     type="l", col="black",
     main ="",
     # xlab ="datetime",
     # ylab ="Voltage",
     ylim = c(0,0.5)
)





#close device

dev.off()

