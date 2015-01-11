par(mfrow=c(2,2))

with(data,{
plot(datetime,data$Global_active_power,type="l",xlab="",ylab="Global_active_power (kilowatt)")
plot(datetime,data$Voltage,type="l",xlab="datetime",ylab="Voltage")
{
g<-gl(3,2880,labels=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(x,y,type="n",ylab="Energy sub metering",xlab="")
x<-datetime
y<-data$Sub_metering_1
z<-data$Sub_metering_2
u<-data$Sub_metering_3
lines(x,y)

lines(x,y,col="blue")
lines(x,z,col="red")

lines(x,u,col="green")

legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("blue","red","green"))
}
plot(datetime,data$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
})

dev.copy(png,file="plot4.png")

dev.off()