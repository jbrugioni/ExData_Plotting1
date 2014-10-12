#load the date
source("loaddata.R");


#plot  
png(file="plot3.png",width=480, height=480, units="px");

plot(dfs$DateTime, dfs$Sub_metering_1,type="l",
     ylab="Energy sub metering",
     xlab="",
     col="black");
lines(dfs$DateTime, dfs$Sub_metering_2,
       col="red");
lines(dfs$DateTime, dfs$Sub_metering_3,
       col="blue");
legend("topright", lwd=2,
       legend=c("Sub_metering_1",
                "Sub_metering_2",
                "Sub_metering_4"),
       col=c("black","red","blue"));

dev.off(); 