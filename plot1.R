hpc <- read.table("household_power_consumption.txt", sep = ";", header = T)
hpc$Global_active_power <- as.numeric(as.character(hpc$Global_active_power))
y <- hpc[!is.na(hpc$Global_active_power),]
png("plot1.png", width = 480, height = 480)
hist(y$Global_active_power, breaks = 24, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()
