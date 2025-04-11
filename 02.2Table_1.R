library(ggplot2)

# Simulated data based on the plot
data <- data.frame(
  personName = c("JOMA", "DIER", "NEUF", "REKR", "RHEM", "BASR", "RHEI", "HOEVORM", "MAANB", "ANDREES", "LOBI", "REZE", "DUES", "KOEL", "ANDE", "KAUR", "MAWORM", "MASREY", "REKL", "NEUF", "DOMA"),
  area = c(5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 15000, 15000, 15000, 15000, 15000, 15000, 15000, 15000, 15000, 15000),
  altitude = c(600, 400, 400, 400, 400, 400, 400, 200, 200, 200, 200, 600, 600, 600, 600, 600, 600, 600, 400, 400, 200),
  lat = c(50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 52, 52, 52, 52, 52, 52, 52, 48, 48, 48),
  lon = c(6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 8, 8, 8),
  size = c(30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 70000, 60000, 50000, 40000, 40000, 40000, 40000, 30000, 30000, 30000)
)

# Adjust some values to better match the scatter in the plots
data$area[data$personName %in% c("REZE", "DUES", "KOEL", "ANDE", "KAUR", "MAWORM", "MASREY", "REKL", "NEUF", "DOMA")] <- 15000
data$lon[data$personName %in% c("REZE", "DUES", "KOEL", "ANDE", "KAUR", "MAWORM", "MASREY")] <- seq(6, 7, length.out = 7)
data$lon[data$personName %in% c("REKL", "NEUF", "DOMA")] <- seq(8, 9, length.out = 3)
