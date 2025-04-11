# Load required package
library(ggplot2)

# Simulated data for stations and their data availability periods
stations_data <- data.frame(
  Station = c("JOMA", "DIER", "NEUF", "REKR", "RHEM", "BASR", "RHEI", "HOEVORM", "MAANB", "ANDREES", "LOBI", "REZE", "DUES", "KOEL", "ANDE", "KAUR", "MAWORM", "MASREY", "REKL", "NEUF", "DOMA"),
  Start_Year = c(1990, 1995, 1985, 2000, 1998, 1992, 1993, 2005, 2010, 2008, 2007, 1980, 1982, 1990, 1995, 2000, 2003, 1997, 2010, 1985, 2015),
  End_Year = c(2020, 2025, 2015, 2025, 2020, 2018, 2022, 2025, 2025, 2023, 2025, 2025, 2020, 2025, 2023, 2025, 2025, 2022, 2025, 2015, 2025)
)

# Calculate the duration for better understanding
stations_data$Duration <- stations_data$End_Year - stations_data$Start_Year

# Create the timeline plot
p <- ggplot(stations_data, aes(x = Start_Year, xend = End_Year, y = Station, yend = Station)) +
  geom_segment(linewidth = 2, color = "blue") +  # Draw lines for each station's period
  geom_point(aes(x = Start_Year, y = Station), color = "green", size = 3) +  # Start points
  geom_point(aes(x = End_Year, y = Station), color = "red", size = 3) +  # End points
  labs(x = "Year", y = "Station", title = "Periods of Available Data at Each Station") +
  theme_minimal() +
  theme(axis.text.y = element_text(size = 8))  # Adjust station label size for readability

# Display the plot
print(p)