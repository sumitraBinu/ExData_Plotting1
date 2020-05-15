#Plot1

#Downloading and unzipping the file if it doesn't already exist
if(!file.exists('pocon.zip')){
  url<-"http://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
  download.file(url,destfile = "pocon.zip")
}
unzip("pocon.zip") # This code is for unzipping the file pocon.zip into a text file titled household_power_consumption

#Load and clean the data


data_pow <- read.table("household_power_consumption.txt", header= TRUE, sep=";",na.strings = "?",
                       colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))#reading the text file
summary(data_pow)
subsetdata <- data_pow[data_pow$Date %in% c("1/2/2007","2/2/2007"),] #read the data pertaining to Feb-1-2007 & Feb-2-2007
head(subsetdata)
tail(subsetdata)
typeof(data_pow$Global_active_power)
GAP<-subsetdata$Global_active_power   
GRP<-subsetdata$Global_reactive_power
voltage<-subsetdata$Voltage
sub_metering_1<-subsetdata$Sub_metering_1
sub_metering_2<-subsetdata$Sub_metering_2
sub_metering_3<-subsetdata$Sub_metering_3

#Plotting Histogram for Global Active Power Consumption
hist(GAP,col="red",main="Global Active Power",xlab="Global Active Power (Kilowatts)")







hist()