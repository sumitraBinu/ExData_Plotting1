#Plotting Time Series Data
#strptime(character, format = "%Y-%m-%d")                 # Convert character to time object
dateTime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(dateTime, GAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")