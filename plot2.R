
#load the date
source("loaddata.R");

#plot  
png(file="plot2.png",width=480, height=480, units="px");
plot( dfs$DateTime, dfs$Global_active_power,
      col="black",type="l", 
      ylab="Global Active Power (kilowatts)",
      xlab="")
dev.off();

