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

# Exercise on creating objects
r_length <- 7
r_width <- 4
area <- r_length * r_width
area

# Functions and their arguments
b <- sqrt(a)

round(3.14159)
?round
args(round)

round(3.14159, 2)

?cor
args(cor)

# Vectors and Data Types
# Numeric vector
hh_members <- c(3, 7, 10, 6)
hh_members

# Character vector
respondent_wall_type <- c("muddaub", "burntbricks", "sunbricks")
respondent_wall_type

length(hh_members)
length(respondent_wall_type)

typeof(hh_members)
typeof(respondent_wall_type)

str(hh_members) # you get more info here than in typeof
str(respondent_wall_type)

# Adding elements to a vector
possessions <- c("bicycle", "radio", "television")
# Adding an element and overwriting the vector
possessions <- c(possessions, "mobile_phone") # at the end
possessions <- c("car", possessions) # at the beginning
possessions

# Subsetting Vectors
respondent_wall_type
respondent_wall_type[2]
respondent_wall_type[c(3, 2)]
more_respondent_wall_type <- respondent_wall_type[c(1, 2, 3, 2, 1, 3)]
more_respondent_wall_type

# Conditional Subsetting
hh_members
hh_members > 5
hh_members[hh_members > 5]
# Combine with Boolean
hh_members[hh_members < 4 | hh_members > 7]
hh_members[hh_members >= 4 & hh_members <= 7]
# <, >, <=, >=, ==
possessions
possessions[possessions == "car" | possessions == "bicycle"]
possessions == "car" | possessions == "bicycle"
# %in% 
possessions %in% c("car", "bicycle")
possessions[possessions %in% c("car", "bicycle")]

# Missing Data
# In R, missing data is NA; functions na.rm = T
rooms <- c(2, 1, 1, NA, 7)
mean(rooms)
mean(rooms, na.rm = T)
max(rooms)
max(rooms, na.rm = T)
?is.na
?na.omit
?complete.cases
# ! NOT operator
rooms[!is.na(rooms)]
sum(is.na(rooms))
na.omit(rooms)
rooms[complete.cases(rooms)]
# Exercises