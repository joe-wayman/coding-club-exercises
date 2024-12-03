#' Title: GEES coding club exercises
#' File: gees_exercises.R
#' Project: coding-club-exercises
#' Description: Exercises linked to the LinkedIn course: Complete guide to R: wrangling, visualising and 
#'              modelling data
#'              
#'              
#### Part 2: Getting started ---------------------
### 2.3 Entering Data ----------------------------
## 2.3.1 Basic commands ----------------


2*2   # basic math commands
10/5
15 - 7

1:100 # prints numbers 1 - 100

print("Hello, World!") # prints text in console (note the use of " to define character class)

#' Exercise 2.1 
#' Have a play using the notation to make some basic math commands and printing to the console 




## 2.3.2 Assigning values --------------

a <- 1 # use <- not - (as this is the subtraction symbol)
a <- b <- c <- 4 # multiple assignments, all objects take the value 3 
d <- c(1,2,3,4) # multiple values in one object (a vector)
d # prints contents to the console

(d <- c(1,2,3,4)) # creates the object and also prints to the console
(e <- c(5,6,7,8)) # create a second vector with the same length

d + e  # add the two vectors together. Notice how each value in the vector is added 
# to the corresponding value in the other

#' Exercise 2.2
#' Create a few objects with different values, or a number of values 
#' Do the same but with characters and print to the console





## 2.3.3 Sequences ---------------------

#' The : operator helps us to created sequences of numbers 

0:10 # numbers 0 to 10
10:0 # 10 to 0
seq(10) # 1 to 10 using the base function 'seq'
seq(30, 0, by = - 3) # count down by 3

#' Exercise 2.3
#' Create a sequence of numbers going up from 0 to 100 by 10 
#' Create a sequence of numbers going down from 100 to 0 by 5 
#' Try to create a sequence of numbers going up from 0 to 100 by 7: does it work? 


## 2.3.4 Math --------------------------

(d <- c(1,2,3,4)) # creates the object and also prints to the console
(e <- c(5,6,7,8)) # create a second vector with the same length

d + e  # add the two vectors together. Notice how each value in the vector is added 
# to the corresponding value in the other

d * e # multiply the elements together

d * 2 # multiple the elements in d by 2

2^6 # poweres/exponents

sqrt(64) # Square root

log(100) # natural log

log10(100) # base 10 log

#' Exercise 2.4
#' Take what you have learned about creating and assigning objects and:
#'    (1) Create a vector called 'h' consisting of the numbers 10, 20 and 30
#'    (2) Create a vector called 'o' consisting of the base log of 50, 50 and 100
#'    (3) Multiple the two vectors together and store as a new object 'res'
#'     
#' Make a few vectors and add them together. Try to add vectors with different lengths and have a look at the 
#'  output and the warning message. 

### 2.4 Data types and structures ----------------
## 2.4.1 Numeric ---------------------------------

num <- 15 # double precision by default
num # print what is stored in the object
typeof(num) # check the type
class(num) # check the class

## NOTE: Class and typeof do basically the same thing! In R, there are many ways to achieve the same outcome

num2 <- 1.5
typeof(num2)
class(num2) #also a double numeric



## 2.4.2 Character ------------------------------

c1 <- "c"
c1
typeof(c1)
class(c1)

# Logical

l1 <- TRUE
l1 
typeof(l1)
class(l1)

l2 <- F #can also shorten to just T or F



## 2.4.3 Vector --------------------------------- 
# Multiple items of the same class stored in the same object

v1 <- c(1,2,3,4)
is.vector(v1) #check if its a vector
class(v1) # check the class

v2 <- c("a", "b", "c")
is.vector(v2) # still a vector!
class(v2)

v3 <- c(T, F, T, T)
is.vector(v3)
class(v3)

# What happens when we try to create a vector with multiple classes?
v4 <- c("a", 15, T)
is.vector(v4) # still a vector!
class(v4) # as we tried to use different classes, R defaults them all to character



## 2.4.4 Matrix ---------------------------------

m1 <- matrix(c(T, T, F, F, T, F), nrow = 2) # note we are splitting over two rows
m1 # see how it looks

m2 <- matrix(c("a", "b", "c", "d"),
             nrow = 2,
             byrow = T)
m2 # see how it looks

# Note how the 'byrow' argument changes the order in which the objects appear in the matrix



## 2.4.5 Array ---------------------------------

# Give data, then dimensions (rows, columns, tables)
a1 <- array(c( 1:24), c(4, 3, 2))
a1



## 2.4.6 Data Frame ---------------------------------

# Can combine vectors of the same length

vNumeric   <- c(1, 2, 3)
vCharacter <- c("a", "b", "c")
vLogical   <- c(T, F, T)

df1 <- cbind(vNumeric, vCharacter, vLogical)
df1  # Coerces all values to most basic data type

df2 <- as.data.frame(cbind(vNumeric, vCharacter, vLogical))
df2  # Makes a data frame with three different data types



## 2.4.7 List ---------------------------------

o1 <- c(1, 2, 3)
o2 <- c("a", "b", "c", "d")
o3 <- c(T, F, T, T, F)

list1 <- list(o1, o2, o3)
list1

list2 <- list(o1, o2, o3, list1)  # Lists within lists!
list2



## 2.4.8 Coercing types ---------------------------------

## Automatic Coercion 

# Goes to "least restrictive" data type

(coerce1 <- c(1, "b", TRUE))
typeof(coerce1)

## Coerce Numeric to Integer 

(coerce2 <- 5)
typeof(coerce2)

(coerce3 <- as.integer(5))
typeof(coerce3)

## Coerce Character to Numeric 

(coerce4 <- c("1", "2", "3"))
typeof(coerce4)

(coerce5 <- as.numeric(c("1", "2", "3")))
typeof(coerce5)

## Coerce Matrix to Data Frame

(coerce6 <- matrix(1:9, nrow= 3))
is.matrix(coerce6)

(coerce7 <- as.data.frame(matrix(1:9, nrow= 3)))
is.data.frame(coerce7)


### 2.5 Comments and headers ---------------------
## 2.5.1 Install and load packages ---------------

install.packages("tidyverse") # to install packages

# Load base packages manually
library(datasets)  # to load packages

## 2.5.2 Load and prepare data -------------------

df <- iris # base R data (included with R)
head(df) # see the first rows

## 2.5.3 Comment out lines -----------------------

# Comment/uncomment lines in RStudio with shift-cmd/ctrl-C

# Use comments to disable commands
hist(df$Sepal.Width,
     # col  = "#CD0000",  # red3
     # border = NA,  # No borders
     main = "Histogram of Sepal Width",
     xlab = "Sepal Width (in cm)")

# you can have continous comments with #', when you hit enter the comments start on a new line

#' example line 1
#' example line 2

## 2.5.4 Headers ---------------------------------

# Important thing is to find a style and try and stick to it. 
# Headers are comments (with a '#' before the text) followed by as least four #/=/-
# all the below work when #/=/- are added after

# THIS IS A LEVEL 1 HEADER 

## This Is a Level 2 Header 

### This is a level 3 header. 


### 2.6 Packages ---------------------------------
### 2.7 The tidyverse ----------------------------
### 2.8 Piping commands --------------------------
#### Part 3: Importing data ----------------------
### 3.1 Rs built in datasets ---------------------

# INSTALL AND LOAD PACKAGES ###

# The datasets package is install by default but not loaded
library(datasets)           # Load example datasets
?datasets                   # Get help on package
library(help = "datasets")  # Get list of datasets / help files

# For list of datasets with links to descriptions:
# 1. Go to "Help" tab in RStudio
# 2. Click on "Home" icon
# 3. Click on "Packages" (under "Reference")
# 4. Click on "datasets"

# SOME SAMPLE DATASETS ###

# Iris data from Fisher and Anderson
?iris
iris

# Titanic survival data
?Titanic
Titanic

# Anscombe's Quartet
?anscombe
anscombe

### 3.2 Exploring sample datasets with pacman ----

# INSTALL AND LOAD PACKAGES ##

# Install pacman ("package manager") if needed
if (!require("pacman")) install.packages("pacman")

#' This is an if statement that simply says:
#' if pacman cannot be loaded, install the package

# pacman must already be installed; then load contributed
# packages (including pacman) with pacman
pacman::p_load(datasets, pacman, rio, tidyverse)
# datasets: for demonstration purposes
# pacman: for loading/unloading packages
# rio: for importing data
# tidyverse: for so many reasons

#' Pacman is a function that will install a package if it is not already installed and then load it, similar 
#' to doing:
#' install.packages("package")
#' library(package)
#' but for multiple packages


# LIST DATASETS WITH P_DATA ##

# Get info on p_data() function from pacman package
?p_data()

# Numbered list of datasets in package with p_data()
p_data(datasets)

# TIDYVERSE DATASETS ##

# Need to query individual tidyverse packages
p_data(tidyverse)  # "no data sets found"

# browseURL("https://www.tidyverse.org/packages/")
# Includes ggplot2, dplyr, tidyr, readr, purrr, tibble,
# stringer, forcats, etc. (not all have datasets)

p_data(ggplot2)       # Tidyverse: Grammar of graphics
p_data(dplyr)         # Tidyverse: Data manipulation
p_data(tidyr)         # Tidyverse: Functions for tidy data
p_data(stringr)       # Tidyverse: Functions for strings
p_data(forcats)       # Tidyverse: Factors & categories

# OTHER PACKAGES WITH DATASETS ##

# These are some packages with datasets that are installed
# on my machine. You can install and load these by
# ucommenting and running the p_load() command that follows.

# p_load(carData, caret, cluster, DescTools, GGally, gnm,
#   janeaustenr, Lahman, lava, lmtest, maps, MASS, mlbench,
#   nlme, nycflights13, psych, qcc, quantreg, rpart,
#   SixSigma, survival, titanic, vcd)

p_data(carData)       # Companion to Applied Regression
p_data(caret)         # Classification & regression training
p_data(cluster)       # Cluster analysis extended
p_data(DescTools)     # Tools for descriptive statistics
p_data(GGally)        # Extension to ggplot2
p_data(gnm)           # Generalized nonlinear models
p_data(janeaustenr)   # Jane Austen's complete novels
p_data(Lahman)        # Sean Lahman baseball database
p_data(lava)          # Latent variable models
p_data(lmtest)        # Testing linear regression models
p_data(maps)          # Draw geographical maps
p_data(MASS)          # Modern Applied Statistics with S
p_data(mlbench)       # Machine learning benchmark problems
p_data(nlme)          # Linear & nonlinear mixed effects
p_data(nycflights13)  # Flights from NYC in 2013
p_data(psych)         # Psychometrics
p_data(qcc)           # Quality control charts
p_data(quantreg)      # Quantile regression
p_data(rpart)         # Recursive partitioning
p_data(SixSigma)      # Six sigma tools for quality control
p_data(survival)      # Survival analysis
p_data(titanic)       # Titanic survival data
p_data(vcd)           # Visualizing categorical data

### 3.3 Importing data from a spreadsheet --------

# INSTALL AND LOAD PACKAGES ##

# Install pacman ("package manager") if needed
if (!require("pacman")) install.packages("pacman")

# Load contributed packages with pacman
pacman::p_load(pacman, party, rio, tidyverse)
# pacman: for loading/unloading packages
# party: for decision trees
# rio: for importing data
# tidyverse: for so many reasons

# LOAD AND PREPARE DATA ##

# Save data to "df" (for "data frame")
# Rename outcome as "y" (if it helps)
# Specify outcome with df$y

# Import CSV files with readr::read_csv() from tidyverse
(df1 <- read_csv("data/StateData.csv"))

# Import other formats with rio::import() from rio
(df2 <- import("data/StateData.xlsx") %>% as_tibble()) # note the pipe defining what format to use

# Or combine import with data preparation
df3 <- import("data/StateData.xlsx") %>%
  as_tibble() %>%
  select(state_code, 
         psychRegions,
         instagram:modernDance) %>% 
  mutate(psychRegions = as.factor(psychRegions)) %>%
  rename(y = psychRegions) %>%
  print()


# EXERCISE ##

#' Load in the distributions.csv from the data folder and store it as an object called "dist"


#' Reload the data and store as an object called dist, but change the format to a tibble and only select the 
#' columns speccode, grid and status. Use head(dist) to check the code worked


#' Reload the data and store as an object called dist, but change the format to a tibble and only select the 
#' columns speccode, grid and status. Also, change speccode to a factor. Use head(dist) and class(dist$speccode)
#' to check the code worked


### 3.4 Importing XML data -----------------------

# Load contributed packages with pacman
pacman::p_load(pacman, tidyverse, XML2R)
# pacman: for loading/unloading packages
# tidyverse: for so many reasons
# XML2R: for working with XML data

# GET DATA & RESTRUCTURE ##

# Data from http://ergast.com/mrd/
# File: http://ergast.com/api/f1/1954/results/1.xml
# Right click to "View page source" and see raw XML

# Import XML data from web (must be online)
df <- "http://ergast.com/api/f1/1954/results/1.xml" %>%
  XML2Obs() %>%
  collapse_obs() %>%
  print()

# See variable (node) names and IDs
df %>%
  names() %>%
  print()

# EXTRACT & COMBINE DATA ##

# Extract data and save as tibble
df %<>%  # %<>% is the compound assignment pipe operator
  as_tibble() %>%                        # Save as tibble
  select(                                # Select data
    Race = matches("RaceName"),          # Get race name
    FirstName = matches("GivenName"),    # Get first name
    LastName = matches("FamilyName"),    # Get last name
    Team = matches("Constructor//Name")  # Get team name
  ) %>% 
  print()  # Each column is a list with two values (oops)

# Alternative view doesn't show URLs
df %>% view()

# Rewrite columns to keep just the "XML_value"
df %<>%  # %<>% is the compound assignment pipe operator
  mutate_all(~ (.[,"XML_value"])) %>%  
  print()

# FILTER & PRINT DATA ##

# Select just the Grand Prix races.
df %<>% 
  filter(str_detect(Race,"Prix")) %>%
  print()

### 3.5 Importing JSON data ----------------------

# INSTALL AND LOAD PACKAGES ##

# Load contributed packages with pacman
pacman::p_load(pacman, tidyverse, jsonlite)
# pacman: for loading/unloading packages
# tidyverse: for so many reasons
# jsonlite: for working with JSON data

# GET JSON DATA ##

# Data from http://ergast.com/mrd/
# File: http://ergast.com/api/f1/1954/results/1.json
# Page shows raw, unstructured JSON data

dat <- "http://ergast.com/api/f1/1954/results/1.json" %>%
  fromJSON()  %>%  # Put data into list
  print()          # See raw data

# See nested JSON stucture
dat %>% toJSON(pretty = T)

# LOCATE DATA ##

# View the structure of the dat object to see that the races
# are in a data.frame object.
str(dat)

# Race name is in:
dat$MRData$RaceTable$Races

# Create tibble
df <- dat$MRData$RaceTable$Races %>% 
  as_tibble %>%
  print()

# Unnest data and select variables; Use names_repair because
# some of the nested dataframes have the same variable names
df %<>% 
  unnest_wider(Results) %>% 
  unnest_wider(Driver, names_repair = "unique") %>% 
  unnest_wider(Constructor, names_repair = "unique") %>% 
  select(
    Race      = raceName,    # Get race name
    FirstName = givenName,   # Get first name
    LastName  = familyName,  # Get last name
    Team      = name         # Get team name
  ) %>%
  print()  # Show data

# FILTER & PRINT DATA ##

# Select just the Grand Prix races
df %<>% 
  filter(str_detect(Race, "Prix")) %>%
  print()


### 3.6 Saving data n native R formats -----------

# INSTALL AND LOAD PACKAGES ###

# Load base packages manually
# library(datasets)  # For example datasets

# Install pacman ("package manager") if needed
if (!require("pacman")) install.packages("pacman")

# pacman must already be installed; then load contributed
# packages (including pacman) with pacman
pacman::p_load(datasets, pacman, rio, tidyverse)
# datasets: for demonstration purposes
# pacman: for loading/unloading packages
# rio: for importing data
# tidyverse: for so many reasons



# LOAD AND PREPARE DATA ###

# Save data to "df" (for "data frame")
# Rename outcome as "y" (if it helps)
# Specify outcome with df$y

df <- import("data/StateData.xlsx") %>%
  as_tibble() %>%
  select(state_code, 
         psychRegions,
         instagram:modernDance) %>% 
  mutate(psychRegions = as.factor(psychRegions)) %>%
  rename(y = psychRegions) %>%
  print()



# SAVE AS RDATA ###

# RData files open natively, are easy to work with
# Note: .rda is a shorter name for .rdata; use either

# Use save()
save(df, file = "data/StateData.rdata")

# Clear data
rm(list = ls())  # Removes all objects from environment

# Now load saved datafile
# You have two choices for reading RData files:
# 1. Base Rs's load()
# 2. rio's import()

# load() immediate puts data in Environment but can't be
# renamed or displayed with same command.
load("data/StateData.rdata")
df  # Check data

# Clear data
rm(list = ls())  # Removes all objects from environment

# import() displays data but doesn't show in Environment
import("data/StateData.rdata") %>%
  print()

# import() can rename file as new object and print
new_df <- import("data/StateData.rdata") %>%
  print()

# Clear data
rm(list = ls())  # Removes all objects from environment



# SAVE AS RDS ###

# Save a serialized version

# Use saveRDS()
df %>% saveRDS("data/StateData.rds")

# Or use write_rds() from tidyverse. Not compressed by 
# default, as "space is generally cheaper than time."
df %>% write_rds("data/StateData2.rds")

# Clear data
rm(list = ls())  # Removes all objects from environment

# You have three choices for reading RDS files:
# 1. Base Rs's readRDS()
# 2. readr's read_rds()
# 3. rio's import()

# Used on its own, import() shows data in Console
import("data/StateData.rds")

# With a destintation object, import saves data
new_df <- import("data/StateData.rds") %>%
  print()



## EXERCISE ###

## Load in the distributions.csv and save back out again as an RDS file



