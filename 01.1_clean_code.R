dir.create('./data')
dir.create('./data/raw')
dir.create('./results')
dir.create('./results/figures')
dir.create('./docs')
# Load necessary library
library(data.table)

# Define variables
temperatures <- c(3, 6, 10, 14)
weights <- c(1, 0.8, 1.2, 1)

# Define function
multiply <- function(x, y) {
  x * y
}

# Compute results
results <- multiply(temperatures, weights)

dir.create("results/assignments")

