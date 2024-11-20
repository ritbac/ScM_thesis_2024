#setting the working directory
#setwd("C:/Users/Ritesh/OneDrive - Johns Hopkins/ScM Thesis/output")

# loading necessary libraries
library(readxl)
install.packages("arsenal")
library(arsenal)
library(here)
library(dplyr)

# loading the dataset

entry1 <- read_excel(here("Mukt Database_Ritesh_Entry 1_08-NOV-2024.xlsx"))
entry2 <- read_excel(here("Mukt Database_Ritesh_Entry 2_08-NOV-2024.xlsx"))

comparison <- comparedf(entry1, entry2)
summary(comparison)

# Filter rows where Color_Munsell is "6-5"
filtered_data <- entry1 %>%
  filter(Color_Munsell == "6-5")

# View the results
print(filtered_data)