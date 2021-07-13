## Schema Design

### Objective:
To design an Entity Relationship Diagram (ERD)
that enables a more organized, flexible, and easy-to-maintain database.
The main focus of this design is on the voter
registration forms collected across collection-mode by organization.

### Approach:
To reduce or avoid data redundancy, I tried to normalize the database design as much as I can.  I decided to create two new tables of Address and Organizations out of the larger tables and linked them to the rest of the entities using cardinal relationships. The tables are related to each other by the primary keys, and this gives easy access to all the information in each table. This eliminates redundant data and ensures data is stored logically. However, I still kept the address attributes for each of the Applicant, Remote, Field, and Mail entities for validation purposes. We can still remove the address attributes from these entities and have all the address attributes stored in one table as Address entity.  I kept both options in my design because I believe the database design depends on many other factors that is not covered here. This is just my quick approach based on the information I had.  
Please see a screenshot of my approach [here:] (https://imgur.com/xDo42Ow)

## Data Wrangling with R

For the data-wrangling problem, I decided to use R. I saved my file as Data-wrangling.R,  which can be opened in RStudio. Before using the file and running the code, please make sure to install the below libraries:
library(tidyverse)
library(jsonlite)
library(dplyr)
library("rjson")


I had to comment out the very last portion of the code, which is writing the result table (allUsers)  into a .csv file. The allUsers file was very large, and GitHub did not allow me to push it to my repo. When you run the code, please kindly comment the line 49 back on and add ‘allUsers.csv’ as file name in the file path.  It will create the big .csv file for you locally.
write.csv(allUsers, "/[your Path]/allUsers.csv")

### Thank You
