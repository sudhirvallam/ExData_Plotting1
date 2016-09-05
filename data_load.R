load_data <- function() {
    library(data.table)
    # load file. Read as  data table
    hhp <- fread("~/Desktop/dls/household_power_consumption.txt", na.strings = "?", stringsAsFactors=FALSE)
    # preserve only rows with dates 2007-02-01 and 2007-02-02
    hhp <- hhp[grepl("^1/2/2007|^2/2/2007",hhp$Date)]
    hhp
}