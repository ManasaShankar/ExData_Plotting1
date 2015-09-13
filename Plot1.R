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
Global_active_power<-as.numeric(data$Global_active_power)
png("plot1.png",width=480, height=480)
hist(Global_active_power, col="red",main="Global Active Power",xlab="Global Active Power(Kilowatts)",ylab= "Frequency")
dev.off()
