dir.create('./data')
dir.create('./data/raw')
dir.create('./results')
dir.create('./results/figures')
dir.create('./docs')
install.packages("lubridate")
library(data.table)

# Load the data
runoff_dt <- fread("data/runoff.csv")

# Inspect the column names
str(runoff_dt)

# Filter for January, February, March
q1_runoff <- runoff_dt[month %in% c(1, 2, 3)]

# Calculate mean by period
mean_q1 <- q1_runoff[, .(mean_runoff = mean(value, na.rm = TRUE)), by = period]

# Assuming there are two periods like "1961-1990" and "2071-2100"
# Compute percentage change between them
mean_q1[, pct_change := 100 * (mean_runoff - mean_runoff[period == "1961-1990"]) / mean_runoff[period == "1961-1990"]]

# View result
print(mean_q1)
