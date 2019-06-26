# CCR Application

## Context
Federal and state statutes and regulations require public water systems to prepare a Consumer Confidence Report (CCR) and distribute to their water consumers on an annual basis. Each CCR contains information on the previous year’s source water, levels of any detected contaminants, and compliance with drinking water regulations (including monitoring requirements), along with some educational information. For small water systems, the minimum information required and presented in each CCR is similar, and the water providers are provided to their users by mail or online.

## Problem
Once submitted, the information in each CCR is siloed and static, making it difficult for water systems, users, and managers to efficiently use the data to inform decisions. We would like to develop a way to allow public water systems to port their data to an application that, like a weather forecast application, will allow geotagged data to integrate into and inform drinking water quality and sources of water datasets. Doing so requires the development of a common data schema and user-friendly application interface.

## 2019 California Water Boards Science Symposium: Water Science Datathon
### Challenge Questions
DATA SCHEMA
- What fields from the template would be included in the common data schema?
- What would the data life cycle be? 
- Where would data for each field come from (e.g. Auto import from database, manual entry, etc.)?
- How would data flow through the life cycle (e.g. manual entry, automatically imported from database via API, etc.)?
- How frequently would data be updated for each field? 
- Which tool(s) would you use to get information from the CCR into the idealized application?

INTERFACE: 
- What would the interface look like?
- What features would it have? 
- What would it be able to tell the user? 
- How would it communicate results (graphics, figures, tables, maps, text)?

### Potential Challenge Tasks
Identify datasets related to CCRs that can be incorporated into an easy to use water application.

Develop a data schema that articulates how currently available data sources could be used to develop the desired application.

### Resources
Water Board CCR Webpage: https://www.waterboards.ca.gov/drinking_water/certlic/drinkingwater/CCR.html

EPA CCR Page: https://www.epa.gov/ccr/ccr-information-consumers

Varuna's iCCR Overview: https://www.interactiveccr.com/
- Interactive CCR shows the interplay between infrastructure investment, rates, and water quality in a format that readers can quickly understand. Each interactive CCR is specific to that water system. 

Flexible database option: https://www.mongodb.com/
- MongoDB is a general purpose, document-based, distributed database built for modern application developers and for the cloud era.

CA Drinking Water Watch 
- List of CA Water Systems: https://sdwis.waterboards.ca.gov/PDWW/
- Water System Details: https://sdwis.waterboards.ca.gov/PDWW/JSP/WaterSystemDetail.jsp?tinwsys_is_number=4424&tinwsys_st_code=CA&wsnumber=CA4510005
