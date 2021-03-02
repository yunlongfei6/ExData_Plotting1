##Check working directory.
getwd()

##download the project data.
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "data.zip", method = "curl")
unzip("data.zip")

##Read and check data in R
EPC1 <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
dim(EPC1)
head(EPC1)

EPC2 <- subset(EPC1, Date == "1/2/2007" | Date == "2/2/2007")
dim(EPC2)
head(EPC2)
tail(EPC2)
table(EPC2$Date)
