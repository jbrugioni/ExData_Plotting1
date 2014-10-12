
#load the date
source("loaddata.R");

#start the capture process
png(file="plot4.png",width=480, height=480, units="px");

# setup multiple plots
par(mfrow=c(2,2))

# top left
plot( dfs$DateTime, dfs$Global_active_power,
      col="black",type="l", 
      ylab="Global Active Power (kilowatts)",
      xlab="")

#top right
plot( dfs$DateTime, dfs$Voltage,
      col="black",type="l", 
      ylab="Voltage",
      xlab="datetime")


#bottom left
plot(dfs$DateTime, dfs$Sub_metering_1,type="l",
     ylab="Energy sub metering",
     xlab="",
     col="black");
lines(dfs$DateTime, dfs$Sub_metering_2,
      col="red");
lines(dfs$DateTime, dfs$Sub_metering_3,
      col="blue");
legend("topright", lwd=2, bty="n",
       legend=c("Sub_metering_1",
                "Sub_metering_2",
                "Sub_metering_4"),
       col=c("black","red","blue"));


#bottom right
plot( dfs$DateTime, dfs$Global_reactive_power,
      col="black",type="l", 
      ylab="Global_reactive_power",
      xlab="datetime");


#finish the plot and export
dev.off();