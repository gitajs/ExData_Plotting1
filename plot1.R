# Code for reading data and generating plot 1.

# Code for reading data
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, destfile = "./data/power.zip", method = "curl")
setwd("./data/")
unzip("power.zip")
hpc <- read.table(file = "./household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
hpc <- within(hpc, {timestamp = strptime(paste(Date, Time), "%d/%m/%Y%H:%M:%S")})
hpc1 <- hpc[hpc$Date %in% c("1/2/2007", "2/2/2007"),]
hpcData <- hpc[hpc$timestamp >= "2007-02-01" & hpc$timestamp <= "2007-02-02",]


# code for making plot1.png
#dev.new(width = 480, height = 480, unit = "px")
hist(hpc1$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power", xlim = c(0,6), ylim = c(0, 1200))
dev.copy(png, file = "plot1.png")
dev.off()





