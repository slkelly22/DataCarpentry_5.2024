# Data Carpentry - R for Social Scientists

# Summary and Setup
# Open RStudio --> Help --> Check for Updates
# To see which version of R you have
sessionInfo() 
# You want at least R version 3.2

# Episode: Before We Start

# Create a Project within RStudio

# To check your working directory; this should match your Project Directory that was just set up
getwd()

# To execute code
##  Mac: command + return
##  Windows: control + enter

# To create sub-folders within your current directory
dir.create("data")
dir.create("data_output")
dir.create("fig_output")

# To download the SAFI clean data; Note: this downloads the file and saves it inside your Data folder
download.file(
  "https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
  "data/SAFI_clean.csv", mode = "wb")
# If you get lost in your file structure, hit the Blue Project Directory icon in the R-hand side of the Files tab to bring you back to your Project Directory Files

# Installing Packages via Code
install.packages("tidyverse")
install.packages("here")

# You can also see what packages you've installed before with code (vs. Packages tab)
installed.packages() # Easier to just look at packages tab

# Loading / Activating / Using a Package
library(tidyverse)
library(here)
