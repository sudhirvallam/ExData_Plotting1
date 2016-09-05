source("~/rwork/ExData_Plotting1/data_load.R")

# load data
hhp <- load_data()
png(file = "~/rwork/ExData_Plotting1/plot3.png", width = 480, height = 480)
dts <- strptime(paste(hhp$Date,hhp$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
plot(dts,hhp$Sub_metering_1, xlab="",ylab="Energy sub metering", type="l")
lines(dts,hhp$Sub_metering_2,col="red")
lines(dts,hhp$Sub_metering_3,col="blue")
legend("topright", lty=1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()