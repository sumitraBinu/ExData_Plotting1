
#Plotting sub metering
plot(dateTime, sub_metering_1, type="l", ylab="Energy Submetering", xlab="",col="black")
lines(dateTime, sub_metering_2, type="l", col="red")
lines(dateTime, sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=4, col=c("green", "red", "blue"))
