library(graphics)
library(datasets)
getwd()
data<-"C:\\Users\\advaith\\Documents\\exdata-data-household_power_consumption.txt"

View(data)
remove(data)
View(household_power_consumption)
data<-household_power_consumption
View(data)
data<- data[data$Date %in% c("1/2/2007","2/2/2007"),]
datetime<-strptime(paste(data$Date,data$Time,sep=" "),"%d/%m/%Y%H:%M:%S")
globalactivepower<-as.numeric(data$Global_active_power)
png("plot2.png",width=480, height=480)
plot(datetime, globalactivepower, type="l",xlab="",ylab="Global Active Power(Kilowatts)")
dev.off()
