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
### 2.5 Comments and headers ---------------------
### 2.6 Packages ---------------------------------
### 2.7 The tidyverse ----------------------------
### 2.8 Piping commands --------------------------
#### Part 3: Importing data ----------------------
### 3.1 Rs built in datasets ---------------------
### 3.2 Exploring sample datasets with pacman ----
### 3.3 Importing data from a spreadsheet --------
### 3.4 Importing XML data -----------------------
### 3.5 Importing JSON data ----------------------
### 3.6 Saving data n native R formats -----------



