# Script for generating plot 2.


with(hpc1, plot(timestamp, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)"))

dev.copy(png, file = "plot2.png")
dev.off()