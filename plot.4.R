dev.off()
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))
with(hpc1, plot(timestamp, Global_active_power, type = "l", ylab = "Global Active Power", xlab = NA))

with(hpc1, plot(timestamp, Voltage, type = "l", pch = "", xlab = "datetime", ylab = "Voltage"))

with(hpc1, plot(timestamp, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = NA))
points(hpc1$timestamp, hpc1$Sub_metering_2, col = "red", type = "l")
points(hpc1$timestamp, hpc1$Sub_metering_3, col = "blue", type = "l")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1, 1), cex = 1, lwd = 2, col = c("black", "red", "blue"))

with(hpc1, plot(timestamp, Global_reactive_power, type = "l", xlab = "datetime"))

