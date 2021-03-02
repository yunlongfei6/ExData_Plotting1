

EPC2$Date <- as.Date(EPC2$Date, format="%d/%m/%Y")
EPC2$Time <- strptime(EPC2$Time, format="%H:%M:%S")
head(EPC2)

EPC2[1:1440,"Time"] <- format(EPC2[1:1440,"Time"],"2007-02-01 %H:%M:%S")
EPC2[1441:2880,"Time"] <- format(EPC2[1441:2880,"Time"],"2007-02-02 %H:%M:%S")

head(EPC2)


plot(EPC2$Time,EPC2$Global_active_power,type="n",xlab="",ylab="Global Active Power (kilowatts)")
with(EPC2,lines(Time,Global_active_power))

dev.copy(png, file = "plot2.png")
dev.off()

