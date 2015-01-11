

data<-read.table("household_power_consumption.txt",sep=";",skip=66637,nrows=2880);



#Ìí¼ÓÁĞÃû³Æ
colnames(data)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2"

,"Sub_metering_3")

as.Date(data$Date,format="%d/%m/%Y")
format(strptime(data$Time,format="%H:%M:%S"),"%H:%M:%S")

save(data,file="data_clean.RData")

hist(data$Global_active_power,xlab="Global_active_power (kilowatt)",col="red",main="Global_active_power")

dev.copy(png,file="plot1.png")

dev.off()