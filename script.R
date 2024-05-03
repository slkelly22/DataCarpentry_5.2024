# Data Carpentry - R for Social Scientists

# Summary and Setup
# Open RStudio --> Help --> Check for Updates
# To see which version of R you have
sessionInfo() 
# You want at least R version 3.2

# Episode 1: Before We Start

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

# Episode 2: Introduction to R

3+5
12/7

# Note: R is case sensitive
# Assignment operator
area_hectares <- 1
# If you want it to print the output in the console
(area_hectares <- 1)
# or just type the object name
area_hectares

# Now that we have an object, we can do things with it
2.47 * area_hectares

# We can assign the area_hectares object a new value 
area_hectares <- 2.5
2.47 * area_hectares

# You can even use that object to create a new object
area_acres <- 2.47 * area_hectares
# Then change area hectares to 50
area_hectares <- 50
# Exercise: What is the current content of area_acres -- 123.5 or 6.175