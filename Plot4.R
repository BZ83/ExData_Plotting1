setwd("C:\\Users\\Vostro 5458\\OneDrive\\Educacao\\Coursera-DataScienceSpecialization\\4-ExploratoryDataAnalysis\\ExData_Plotting1")
data <- read.table("household_power_consumption.txt", sep=";",skip=66637, nrows=2880, col.names=colnames(read.table("household_power_consumption.txt", sep=";", nrow=1, header=TRUE)))
AdjustedDate <- strptime(data$Date, format="%d/%m/%Y")
data2 <- cbind(data, AdjustedDate)



png(file="plot4.png", width=480, height=480)

par(mfrow=c(2,2))

#Plot 1
with(data2, plot(Time, Global_active_power, type="l", xaxt="n", ylab="Global Active Power (kilowatts"))
axis(1, at=seq(1,1401,700), labels=c("Thu", "Fri", "Sat"))

#Plot 2
with(data2, plot(Time, Voltage, type="l", xaxt="n", ylab="Voltage"))
axis(1, at=seq(1,1401,700), labels=c("Thu", "Fri", "Sat"))


#Plot 3
with(data2, plot(Time, Sub_metering_1, type="n", xaxt="n", ylab="Energy sub metering"))
lines(data2$Sub_metering_2, col = "red")
lines(data2$Sub_metering_3, col = "blue")
axis(1, at=seq(1,1401,700), labels=c("Thu", "Fri", "Sat"))
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1), col=c("black","red","blue"))

#Plot 4
with(data2, plot(Time, Global_reactive_power, type="l", xaxt="n", ylab="Global_Reactive_Power"))
axis(1, at=seq(1,1401,700), labels=c("Thu", "Fri", "Sat"))


dev.off()