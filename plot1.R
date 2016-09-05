source("~/rwork/ExData_Plotting1/data_load.R")

# load data
hhp <- load_data()
png(file = "~/rwork/ExData_Plotting1/plot1.png", width = 480, height = 480)
hist(hhp$Global_active_power,col="red", main = "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()