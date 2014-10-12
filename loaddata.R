
# path to data file
# assumed to be in a "data" folder below the current
# working directory
filename<-"./data/household_power_consumption.txt";

# read in the data
# na.strings options turns ?'s to NA
df<-read.csv(filename, header=TRUE, sep=";",na.strings="?");

#create the date/time string
sdatetime<-strptime(paste(df$Date,df$Time),"%d/%m/%Y %H:%M:%S" );

#add the date-time to the dataframe
df$DateTime<-sdatetime;

#create the start and end dates
startdate<-strptime("1/2/2007 00:00:00","%d/%m/%Y %H:%M:%S");
enddate<-strptime("3/2/2007 00:00:00","%d/%m/%Y %H:%M:%S");

#subset the data to the start and end dates
dfs<-subset(df,( DateTime >= startdate) & ( DateTime < enddate));

