library(lubridate)
hpc <- read.table("household_power_consumption.txt", sep = ";", header = T)
hpc$Global_active_power <- as.numeric(as.character(hpc$Global_active_power))
t <- paste(hpc$Date, hpc$Time)
