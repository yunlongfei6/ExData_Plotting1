par(mfrow = c(2,2))

with(EPC2,{
  plot(EPC2$Time, EPC2$Global_active_power, type="l", xlab = "", ylab = "Global Active Power")  
  plot(EPC2$Time, EPC2$Voltage, type="l", xlab="datetime", ylab="Voltage")
  plot(EPC2$Time, EPC2$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
  with(EPC2, lines(Time, Sub_metering_1))
  with(EPC2, lines(Time, Sub_metering_2, col = "red"))
  with(EPC2, lines(Time, Sub_metering_3, col = "blue"))
  legend("topright", lty = 1, col = c("black", "red", "blue"),legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.6)
  plot(EPC2$Time, EPC2$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
})

dev.copy(png, file = "plot4.png")
dev.off()
