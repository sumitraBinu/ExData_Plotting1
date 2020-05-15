#Creating 4 Plots
#Creating plots for Global Active Power, Global Reactive Power, Voltage and Sub metering
par(mfrow=c(2,2),mar=c(4,4,1,2)) # 2 plots per row
#Plot 4- Creating Multiple Plots

with(subsetdata, 
{
  #Plot 1- Global Active Power 
  plot(dateTime,GAP,type="l",xlab="",ylab="Global Active Power (Kilowatts)")
  #Plot 2- Voltage 
  plot(dateTime,voltage,type="l",xlab="dateTime",ylab="Voltage (volt)")
  #Plot 3- Sub Metering
  plot(dateTime, sub_metering_1, type="l", ylab="Energy Submetering", xlab="",col="black")
  lines(dateTime, sub_metering_2, type="l", col="red")
  lines(dateTime, sub_metering_3, type="l", col="blue")
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.4
         ,lty=1, lwd=2.5, col=c("black", "red", "blue"), bty="o")
  #Plot 4- Global Re-Active Power 
  plot(dateTime, GRP, type="l", xlab="dateTime", ylab="Global_reactive_power")
  }
)

