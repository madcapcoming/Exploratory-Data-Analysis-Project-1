
powerData <- read.csv("household_power_consumption.txt", sep=";", dec=".", na.strings = "?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric",  "numeric", "numeric"))  


plotData <- powerData[(powerData$Date == "1/2/2007" | powerData$Date == "2/2/2007"), ]
View(plotData)

png(filename = "plot1.png", width = 480, height = 480)

hist(plotData$Global_active_power, col="red", xlab = "Global Active Power (kilowats)", ylab = "Frequency", main ="Global Active Power")

dev.off()
