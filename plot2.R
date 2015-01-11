
par(cra=character("480"))

datetime <- strptime(paste(data$Date, data$Time),"%Y-%m-%d %H:%M:%S")

plot(datetime,data$Global_active_power,type="l",xlab="",ylab="Global_active_power (kilowatt)")

dev.copy(png,file="plot2.png")

dev.off()