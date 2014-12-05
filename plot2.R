library(lubridate)
hpc <- read.table("household_power_consumption.txt", sep = ";", header = T)
hpc$Global_active_power <- as.numeric(as.character(hpc$Global_active_power))
y <- hpc[wday(hpc$Date) == 5 | wday(hpc$Date) == 6 | wday(hpc$Date) == 7,]
y$wday_time <- strptime(paste(wday(y$Date, label = T, abbr = T), y$Time), "%a %H:%M:%S")
png("plot2.png")
plot(y$wday_time, y$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)")
dev.off()
