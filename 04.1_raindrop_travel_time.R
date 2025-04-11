# 04.1_raindrop_travel_time.R
# Distance from Alpine Rhine to North Sea in kilometers
distance_km <- 1230
# Average river flow velocity in meters per second
velocity_mps <- 1.2           

# Convert distance to meters
distance_m <- distance_km * 1000

# Calculate time in seconds
time_sec <- distance_m / velocity_mps

# Convert to hours, days
time_hr <- time_sec / 3600
time_day <- time_hr / 24

# Output
cat(sprintf("A raindrop falling at the Alpine Rhine would take approximately %.1f days (%.1f hours) to reach the ocean.\n", 
            time_day, time_hr))
