catchment_area_km2 <- 185000  # km²
rainfall_rate_mm_hr <- 0.5    # mm/hour
duration_hr <- 24             # hours

# Convert units
catchment_area_m2 <- catchment_area_km2 * 1e6  # m²
rainfall_depth_m <- rainfall_rate_mm_hr / 1000 * duration_hr  # meters

# Calculate total rainfall volume
rainfall_volume_m3 <- catchment_area_m2 * rainfall_depth_m  # cubic meters

# Display result
print(paste("Total rainfall volume:", format(rainfall_volume_m3, scientific = TRUE), "m³"))
