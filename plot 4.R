## we have the data from earlier plottings 
## Now create the visualizations
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
png('plot 4.png')
plot(dataSubsetted$Global_active_power~dataSubsetted$dateTime, type="l", ylab = "Global Active Power (kilowatts)", xlab='')
plot(dataSubsetted$Voltage~dataSubsetted$dateTime, type="l", ylab = "Voltage", xlab='datetime')
with(dataSubsetted,
     plot(Sub_metering_1~dateTime, type="l",
          ylab="Energy sub metering", xlab=""))
with (dataSubsetted, lines(Sub_metering_2~dateTime,col='Red'))
with(dataSubsetted, lines(Sub_metering_3~dateTime,col='Blue'))
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(dataSubsetted$Global_reactive_power~dataSubsetted$dateTime, type="l", xlab='datetime', ylab = 'Global_reactive_power')
dev.off()
