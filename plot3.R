head(EPC2)

plot(EPC2$Time,EPC2$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")

with(EPC2,lines(Time,Sub_metering_1))
with(EPC2,lines(Time,Sub_metering_2,col="red"))
with(EPC2,lines(Time,Sub_metering_3,col="blue"))

legend("topright", lty = 1, col = c("black", "red", "blue"),legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file = "plot3.png")

dev.off()
