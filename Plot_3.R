## Exploratory Data Analysis - Week 1

## Plot_3

## Connect to dataset

Consumption <- read.table(file.path("H:/Data Science Notes/Current Coursera/Exploratory Data Analysis/Week 1/Consumption", "household_power_consumption.txt"), 
                          header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

Cons_Subset <- Consumption[Consumption$Date %in% c("1/2/2007", "2/2/2007") ,]

Cons_Subset$DateTime <- strptime(paste(Cons_Subset$Date, Cons_Subset$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

png("Plot_3.png", width = 480, height = 480)
plot(Cons_Subset$DateTime, as.numeric(Cons_Subset$Sub_metering_1), type = "l", xlab = "", ylab = "Energy Submetering")
lines(Cons_Subset$DateTime, as.numeric(Cons_Subset$Sub_metering_2), type = "l", col = 'red')
lines(Cons_Subset$DateTime, as.numeric(Cons_Subset$Sub_metering_3), type = "l", col = 'blue')
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()



