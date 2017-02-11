setwd("C:\\Users\\Vostro 5458\\OneDrive\\Educacao\\Coursera-DataScienceSpecialization\\4-ExploratoryDataAnalysis\\ExData_Plotting1")
data <- read.table("household_power_consumption.txt", sep=";",skip=66637, nrows=2880, col.names=colnames(read.table("household_power_consumption.txt", sep=";", nrow=1, header=TRUE)))
AdjustedDate <- strptime(data$Date, format="%d/%m/%Y")
data2 <- cbind(data, AdjustedDate)


png(file="plot2.png", width=480, height=480)
with(data2, plot(Time, Global_active_power, type="l", xaxt="n", ylab="Global Active Power (kilowatts"))
axis(1, at=seq(1,1401,700), labels=c("Thu", "Fri", "Sat"))
dev.off()