library(tidyverse)
library(NHANES)

# Save the selected columns as a new data frame
# Recall the style guide for naming objects
nhanes_small <- select(NHANES, Age, Gender, BMI, Diabetes,
                       PhysActive, BPSysAve, BPDiaAve, Education)

# View the new data frame
nhanes_small
# Rename all columns to snake case
nhanes_small <- rename_with(nhanes_small, snakecase::to_snake_case)

# Have a look at the data frame
nhanes_small
readr::write_csv(
    nhanes_small,
    here::here("data/nhanes_small.csv")
)
