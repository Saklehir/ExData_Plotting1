data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

# format the date to data
data$Date <- as.Date(data$Date, "%d/%m/%Y")

# get only the data to be used
dataSubsetted <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")

dataSubsetted <- dataSubsetted[complete.cases(dataSubsetted),]

## Combine Date and Time column
dateTime <- paste(dataSubsetted$Date, dataSubsetted$Time)

## Name the vector
dateTime <- setNames(dateTime, "DateTime")

## Remove Date and Time column
dataSubsetted <- dataSubsetted[ ,!(names(dataSubsetted) %in% c("Date","Time"))]

## Add DateTime column
dataSubsetted <- cbind(dateTime, dataSubsetted)

## Format dateTime Column
dataSubsetted$dateTime <- as.POSIXct(dateTime)
# 

png('plot 1.png')
hist(dataSubsetted$Global_active_power, xlab = 'Global Active Power (kilowatts)', col = 'red', main = 'Global Active Power')

dev.off()
