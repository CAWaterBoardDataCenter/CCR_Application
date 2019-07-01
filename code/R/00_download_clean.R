# Created by Rich Pauloo (richpauloo@gmail.com) on 2019-07-01
# The purpose of this script is to provide a script to download 
# relevant datasets, combine them, and write them for additional 
# processing. 

# necessary packages
library(tidyverse)    # general purpose data science toolkit
library(foreign)      # for reading .dbf files

# download, upzip, and read most recent data and chemical storet info
urls <- c("https://www.waterboards.ca.gov/drinking_water/certlic/drinkingwater/documents/edtlibrary/chemical.zip",
          "https://www.waterboards.ca.gov/drinking_water/certlic/drinkingwater/documents/edtlibrary/storet.zip")
temp1 <- temp2 <- tempfile()
download.file(urls[1], temp1)
download.file(urls[2], temp2)

# change exdir paths to a local working directory
unzip(temp1, 
      exdir = "/Users/richpauloo/Desktop/ca_water_datathon/")
unzip(temp2,
      exdir = "/Users/richpauloo/Desktop/ca_water_datathon/")

rm(temp1, temp2) # remove temp files

# read chem and storet data into R
chem  <- read.dbf("/Users/richpauloo/Desktop/ca_water_datathon/chemical.dbf")
stor  <- read.dbf("/Users/richpauloo/Desktop/ca_water_datathon/storet.dbf")
sdwis <- read_csv("https://data.ca.gov/sites/default/files/Public%20Potable%20Water%20Systems%20FINAL%2006-22-2018_0.csv")

# make equivalent water system identifers 
sdwis$`Water System No` <- str_sub(sdwis$`Water System No`, 3, 9)
chem$PRIM_STA_C <- str_sub(chem$PRIM_STA_C, 1, 9)

# join chem and stor data
chem <- left_join(chem, stor, by = "STORE_NUM")
chem <- left_join(chem, sdwis, by = c("PRIM_STA_C" = "Water System No"))

# write the joined data
write_rds(chem, "/Users/richpauloo/Desktop/ca_water_datathon/chem.rds")

# number of unique public water systems
unique(chem$PRIM_STA_C) %>% length()

# subset of chem data for prototyping (first 10 unique PWS)
chem_sub <- filter(chem, PRIM_STA_C %in% unique(chem$PRIM_STA_C)[1:10])
write_rds(chem_sub, "/Users/richpauloo/Desktop/ca_water_datathon/chem_sub.rds")
