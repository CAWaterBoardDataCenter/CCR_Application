# CCR Data Download and Report

**Created by [Rich Pauloo](richpauloo.github.io) on 2019-07-01.**  

### This repo contains:  

* `00_download_clean.R` - downloads and joins: (1) ~ 10,000,000 observations of recent chemical data for water utilities in California, (2) chemical storet data, and (3) SDWIS data  
* `01_generate_ccr.Rmd` - minimal example of a CCR generated from the data collected in `00_download_clean.R  `  
* `chem_sub.rds` - subset of data from 10 water utilities for prototyping  

### Future Directions

* isolate treated/untreated systems (should be in SDWIS) to only display treated data  
* integrate water system [spatial boundaries](https://data.ca.gov/dataset/drinking-water-water-system-service-area-boundaries)  
* display in a Shiny App  
* R package to easily access this data (need API)  
* auto-email reports to a list of email addresses via Gmail API (`gmailR`)  

### Random Notes

* `PRIM_STA_C` field: digits 1-2 are county number; digits 1-7 are public water system (PWS) number. This is how we join the data to SDWIS.  
