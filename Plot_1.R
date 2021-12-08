## Exploratory Data Analysis - Week 1

## Plot_1

## Connect to dataset

Consumption <- read.table(file.path("H:/Data Science Notes/Current Coursera/Exploratory Data Analysis/Week 1/Consumption", "household_power_consumption.txt"), 
                          header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

Cons_Subset <- Consumption[Consumption$Date %in% c("1/2/2007", "2/2/2007") ,]

png("Plot_1.png", width = 480, height = 480)
hist(as.numeric(Cons_Subset$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()