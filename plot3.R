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

dev.copy(png,file="plot3.png")

dev.off()