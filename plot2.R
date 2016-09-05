source("~/rwork/ExData_Plotting1/data_load.R")

# load data
hhp <- load_data()
png(file = "~/rwork/ExData_Plotting1/plot2.png", width = 480, height = 480)
plot(strptime(paste(hhp$Date,hhp$Time, sep=" "),"%d/%m/%Y %H:%M:%S"),hhp$Global_active_power, xlab="",ylab="Global Active Power (kilowatts)", type="l")
dev.off()