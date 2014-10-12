
#load the date
source("loaddata.R");

#plot the histogram
png(file="plot1.png",width=480, height=480, units="px");
hist(dfs$Global_active_power,col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)");
dev.off();


