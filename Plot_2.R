## Exploratory Data Analysis - Week 1

## Plot_2

## Connect to dataset

Consumption <- read.table(file.path("H:/Data Science Notes/Current Coursera/Exploratory Data Analysis/Week 1/Consumption", "household_power_consumption.txt"), 
                          header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

Cons_Subset <- Consumption[Consumption$Date %in% c("1/2/2007", "2/2/2007") ,]

Cons_Subset$DateTime <- strptime(paste(Cons_Subset$Date, Cons_Subset$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

png("Plot_2.png", width = 480, height = 480)
plot(Cons_Subset$DateTime, as.numeric(Cons_Subset$Global_active_power), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()



