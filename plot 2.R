# we have the data from earlier session
## as my language is in German the days are written in German with Donnerstag=Thursday, Freitag = Friday, Samstag = Saturday
png('plot 2.png', height = 480, width = 480)
plot(dataSubsetted$Global_active_power~dataSubsetted$dateTime, type="l", ylab = "Global Active Power (kilowatts)", xlab='')
dev.off()
