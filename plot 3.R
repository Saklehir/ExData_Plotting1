## we have the data from earlier plottings 
## Now create the visualizations
png('plot 3.png')
with(dataSubsetted, plot(Sub_metering_1~dateTime, type="l",
       ylab="Global Active Power (kilowatts)", xlab=""))
with(dataSubsetted,lines(Sub_metering_2~dateTime,col='Red'))
with(dataSubsetted,lines(Sub_metering_3~dateTime,col='Blue'))
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
