#Data Wrangling

# We have started running a new program and we wanted to get a list of all the
# users that have been processed. For this program, we used three (3) different
# vendors and each one gave us the data in a different format. The task is to
# combine the data and prepare it to be loaded into our data warehouse. We
# anticipate that we will continue running this program long term. Therefore,
# consider that it would be included as part of a larger pipeline. You may use any programming language you're comfortable with - our preference,
# in order, is Python, R, other. In the README you sumbit, make sure to add a
# section about how to run the script. If you are short on time, you may write
#pseudo code for a script that would accomplish this task.



#Loading the necessary libraries
library(tidyverse)
library(jsonlite)
library(dplyr)


# loading and reading the first dataset (.csv file)
 vendor1 <- read.csv("/Users/sanaz/Downloads/voices-vote-now-assessment/vendor1.csv", header = TRUE, sep = ",", stringsAsFactors= FALSE)

 # Making sure that the dataset was loaded and read correctly
 show(vendor1)
 dim(vendor1)
 glimpse(vendor1)

 # Loading the json package and reading the json file
 install.packages("rjson")
 library("rjson")

 vendor2 <- fromJSON(file = "/Users/sanaz/Downloads/voices-vote-now-assessment/vendor2.json")
 # Converting json data to a dataframe
 json_data <- as.data.frame(vendor2)
 glimpse(vendor2)

 # Reading the vendor2 data as csv file
 vendor2 <- read.csv("/Users/sanaz/Downloads/voices-vote-now-assessment/vendor2.csv", header = TRUE, sep = ",", stringsAsFactors= FALSE)


# Combining the two files using merge function
 allUsers<- merge(vendor1, vendor2, by.vendor1 = "ID", by.vendor2 = "ID", all.vendor1 = TRUE, all.vendor2 = FALSE)

 head(allUsers)
 glimpse(allUsers)

 # Saving the new combined allUsers data as a .csv file
 # write.csv(allUsers, "/Users/sanaz/Downloads/voices-vote-now-assessment/ filename")

 # Commenting out the line above and removing the file name because it is creating a very large file and GitHub does not allow me to push this file to my repo.
