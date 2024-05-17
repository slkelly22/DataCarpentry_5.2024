# Tells me which version of R I have
sessionInfo()

# this tells me where my working directory is located
getwd()

# This creates a folder within my project
dir.create("data")

# Grabbing the file from online and adding to my data folder
download.file(
  "https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
  "data/SAFI_clean.csv", mode = "wb"
)

# only need to install once but will need to library() every time
install.packages("tidyverse")
install.packages("here")
install.packages(c("tidyverse", "here"))

# Required packages to run subsequent code
library(tidyverse)
library(here)

3+5
12/7

# name_of_object <- value
area_hectares <- 1
area_hectares

2.47 * area_hectares

area_hectares <- 2.5
2.47 * area_hectares

area_acres <- 2.47 * area_hectares
area_hectares <- 50

# Introduction to Functions
round(3.14159)
round(3.14159, digits = 2)
round(3.14159, 2)
# Getting Help
?mean()
# Getting the arguments of the function
args(mean)
args(lm)
?cor()

# Vectors and Data Types
# Creating a numeric vector
hh_members <- c(3, 7, 10, 6)
# Creating a character vector
respondent_wall_type <- c("muddaub", "burntbricks", "sunbricks")

# How many elements in the vector? 
length(hh_members)

# Understanding data types - typeof() and str()
typeof(hh_members)
typeof(respondent_wall_type)

str(hh_members)
str(respondent_wall_type)

# Data Types, continued
# Character, Numeric, Logical Vector
logic <- c(T, F, F, TRUE, FALSE)
sum(logic)

# Subsetting Vectors
respondent_wall_type
respondent_wall_type[2]
respondent_wall_type[c(3, 2)]

# Logical vector behind-the-scenes
hh_members
hh_members > 5 # This provides T/F output
sum(hh_members > 5)
hh_members[hh_members > 5]

# Boolean in R
# & and, ! not, | or
# >, >=, <, <=, ==, %in%

hh_members[hh_members < 4 | hh_members >= 7]
hh_members[hh_members >= 4 & hh_members <= 7]

possessions <- c("car", "bicycle", "radio", "tv", "mobile_phone")

possessions[possessions == "car" | possessions == "bicycle"]

possessions %in% c("car", "bicycle")

# rm() allows you to remove objects from your environment
rm(logic)

# Missing Data
rooms <- c(2, 1, 1, NA, 7)

# We get NA b/c misssing data
mean(rooms)

mean(rooms, na.rm = T)

max(rooms, na.rm = TRUE)

# Other functions useful for missing data: is.na(), na.omit(), complete.cases()

rooms[!is.na(rooms)]

sum(is.na(rooms))
is.na(rooms)

na.omit(rooms)

rooms[complete.cases(rooms)]

# Exercise Time

rooms <- c(1, 2, 1, 1, NA, 3, 1, 3, 2, 1, 1, 8, 3, 1, NA, 1)
# Now try to remove the NAs

# then use median() function

# Then figure out how many households use > 2 rooms for sleeping