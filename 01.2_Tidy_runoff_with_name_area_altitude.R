library(data.table)

# Load data
runoff_stations <- readRDS("./data/runoff_stations.rds")

# Create new data.table with specified columns
station_info <- runoff_stations[, .(sname, area, altitude)]

# Transform to tidy format (melt into long format)
station_info_tidy <- melt(station_info, id.vars = "sname", 
                          measure.vars = c("area", "altitude"),
                          variable.name = "attribute", value.name = "value")

# Save for reference (optional, not specified)
saveRDS(station_info_tidy, "./data/station_info_tidy.rds")
