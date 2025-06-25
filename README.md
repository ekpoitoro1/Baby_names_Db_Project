# Baby Names Data Analysis
This project showcases a comprehensive exploration of baby name trends across the United States using SQL analysis. Designed as a capstone for a baby names website's Annual Baby Names Report, this work investigates naming patterns across decades, states, and regions, providing valuable insights for parents, researchers, and media platforms.

### Project Objectives
* Examine trends in baby names across years, genders, and locations.

* Identify historically popular and rare names.

* Understand how naming preferences differ across regions and periods.

* Deliver a set of insightful SQL queries that could uncover insights, reports, or name recommendation engines.

### Database Overview

Two tables were used for this analysis, which include the regions and names table.

#### regions: 
This table maps regions of the U.S. states. The columns include state and region

#### names: 
This table contains Columns including state, gender, year, name, and births.

#### **Constraints applied**:

* regions.state is a primary key in the region table.

* names uses a composite primary key (state, gender, year, name).

* names.state is a foreign key referencing regions.state.


#### Key Analysis Questions
Total births recorded per region each year?

What is the total number of unique baby names recorded?

What are the Top 5 most popular and 5 least popular names by gender across all years?

What are the top names for the first 3 early (1980, 1981,1982) years and last 3 recent years? 

What are the top-most popular baby names of all time by total births? 

What are the top 10 most popular baby names of all time by total births? 

What are the top names for each year?

Which state had the highest number of births in total? 

What is the total birth rate for each year?

Which year had the highest number of births recorded? 
