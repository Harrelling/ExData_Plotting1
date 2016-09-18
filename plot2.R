data <- read.table("household_power_consumption.txt", sep=";", dec=".", header=TRUE, stringsAsFactors=FALSE)
subdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(subdata$Global_active_power)
png("plot2.png", width=480, height=480)
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
