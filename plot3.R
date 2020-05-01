# Script for generating plot 3.

with(hpc1, plot(timestamp, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = NA))
points(hpc1$timestamp, hpc1$Sub_metering_2, col = "red", type = "l")
points(hpc1$timestamp, hpc1$Sub_metering_3, col = "blue", type = "l")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1, 1), cex = 1, lwd = 2, col = c("black", "red", "blue"))

dev.copy(png, file = "plot3.png")
dev.off()