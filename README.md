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

* Total births recorded per region each year?

* What is the total number of unique baby names recorded?

* What are the Top 5 most popular and 5 least popular names by gender across all years?

* What are the top names for the first 3 early (1980, 1981, and 1982) years and recent years (2007, 2008, and 2009? 

* What are the top-most popular baby names of all time by total births? 

* What are the top 10 most popular baby names of all time by total births? 

* What are the top names for each year?

* Which state had the highest number of births in total?
  
* What are the top 5 names per region?

* What is the total birth rate for each year?

* Which year had the highest number of births recorded? 

* Which of the top 5 states has the highest number of births in total? 

* Which Top 5 names were the most popular in CA?

* Which Top 5 names were the most popular in the states with the highest total births?

* What are the top 10 states with the birth name 'Michael'? 

* How do the years with a spike in birth count for the name 'Michael' compare?

* How do the years with a spike in birth count for the name 'Christopher' compare?

* How do the years with a spike in birth count for the name 'Matthew' compare?
 
* How do the years with a spike in birth count for the name 'Joshua' compare?

* How do the years with a spike in birth count for the name 'Jessica' compare?


### Key Insights and Findings

* A total of 22,240 unique baby names were recorded, revealing a rich diversity of naming choices.

* Regional summaries helped identify unique naming trends and population shifts.

* The top 5 Most Popular names are Michael, Christopher, Matthew, Joshua, Jessica

* The least Popular names are Kyriakos, Bhavin, Deema, Tamsen, and Elleanna

* The top names for the first 3 early and recent years are;

					1980: Michael and Jennifer
  
					1981: Michael and Jennifer
  
					1982: Michael and Christopher
  
					2007: Daniel, Anthony, and Angel
  
					2008: Daniel, Anthony, and Angel
  
					2009: Daniel, Isabella, and Anthony
   
This shows that Names like Michael and Jennifer dominated in the 1980s, while Names like Daniel, Anthony, Angel, and 

Isabella emerged as a favorite in the 2000s.

* The top 10 Baby Names of all time are Michael, Christopher, Matthew, Joshua, Jessica, Daniel, David, Ashley, James, and
   Andrew, with the Name Michael emerging as the top baby name of all time based on total births.

* Three Names stood out in the analysis of the top names for each year. Michael held the top spot from 1980 to 1993, Jessica was the most popular from 1994, while Daniel topped from 1995 to 2009.

* Among all states, California (CA) leads by a significant margin, with over 14 million (14,076,348) total births overall recorded.
  
* The top 5 names per region include;
  
	      i.) Mid_Atlantic: Michael, Matthew, Christopher, Joseph, Daniel.
  
		  ii.) Midwest: Michael, Matthew, Joshua, Christopher, Andrew
  
		 iii.) Mountain: Michael, Joshua, Christopher, Matthew, Jessica
  
		  iv.) New_England: Michael, Joshua, Christopher, Matthew, Jessica
  
		   v..) Pacific: Michael, Christopher, Daniel, David, Jessica
  
	      vi) South Christopher, Michael, Joshua, James, Matthew

* The top 10 states where the name ‘Michael’ was most frequently given are: CA, NY, TX, PA, IL, FL, OH, NJ, MI, and MA. These states reflect strong regional popularity and cultural influence around this name.

* The trend of the total birth rate for each year showed that more births were recorded in 1990, marking a generational high in baby naming.

* The top 5 states with the highest number of births in total are CA, TX, NY, FL, and IL

* The Top 5 names with the most popularity in CA are Michael, Daniel, Christopher, David, and Jessica

*  The Top 5 names with the most popularity in the states with the highest total births are;

        CA: Michael, Daniel, Christopher, David, Jessica

        FL: Michael, Christopher, Joshua, Matthew, Ashley

        L Michael, Matthew, Daniel, Christopher, Jessica

        Y Michael, Christopher, Matthew, Joseph, Daniel

        TX: Christopher, Michael, Jose, Joshua, David
*  The top 10 states with the birth name 'Michael' are A, NY, TX, PA, IL, FL, OH, NJ, MI, and MA

*  Popular Names with Historical Spikes & Declines
Although the following names experienced historical spikes in popularity, there was a noticeable gradual decline in more recent years:

![Yearly Trend in Name Michael](https://github.com/user-attachments/assets/9ecab12e-4c6b-45e0-a533-062aa2da2b93)
##### Yearly Trend in Name: Michael

![Yearly Trend in name Christopher](https://github.com/user-attachments/assets/075585cd-2d71-476c-9b8d-e50d2610305b)
##### Yearly Trend in Name: Christopher

![Yearly trend in Name Matthew](https://github.com/user-attachments/assets/dfc941fa-5e5b-4fa4-80fa-ddb870a1d524)
##### Yearly Trend in Name: Matthew

![Yearly Trend in  Name Joshua](https://github.com/user-attachments/assets/5a9dea56-7021-47d5-b2a7-fd7a2918e82d)
 ##### Yearly Trend in Name: Joshua
 
![Yearly Trend in  Name Jessica](https://github.com/user-attachments/assets/6745c41e-1ec8-4f7d-af02-0f13c83b2e88)
##### Yearly Trend in Name: Jessica


#### Findings from yearly trends
            Michael: Once the most dominant male baby name in the U.S., Michael shows a clear decline in birth count since its peak in the 1980s and 1990s.

            Christopher: Widely popular in the 1980s, the name’s usage has steadily dropped year over year.

            Matthew: A staple of 1990s baby name charts, Matthew also shows a downward trend in recent birth data.

            Joshua: Enjoyed a long streak of popularity through the late '80s and '90s, but has declined in the 2000s.

            Jessica: Dominated female naming charts in the late '80s and throughout the '90s, but has steadily lost prominence since the 2000s.


  ### Recommendations

* Since local trends vary greatly, name suggestions should be tailored according to the user's state or region.

* A name explorer  tool that allows users to see how popular a name has been over time should be provided; this will assist in making data-driven naming choices.

* Encourage the use of rising or culturally diverse names as substitutes for dwindling names, particularly for users who are looking for something different.

* By designating names as "Classic," "Rising," or "Fading" according to their birth count trajectories, you can draw attention to historical trends.
  
* Additionally, the platform may produce a more interesting, educational, and user-focused experience that takes into account changing regional and temporal naming trends.

#### CONCLUSION

This capstone project on baby names effectively illustrates how SQL and relational databases can be used to extract valuable insights from historical data. The research shows how names change in tandem with cultural and societal shifts by examining patterns in naming across time, gender, and region. The results offer a useful basis for user interaction and product development on a baby names platform, ranging from identifying all-time favorites like Michael and Jessica to acknowledging the regional significance of places like California.

These insights can direct the development of more intelligent, data-driven tools as naming preferences continue to change, assisting parents in making well-informed choices and finding names that align with their cultural and personal beliefs. This project demonstrates both technical expertise and the practical use of data analytics in influencing daily decisions.




  
