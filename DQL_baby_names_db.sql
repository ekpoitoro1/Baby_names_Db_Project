-- Exploring the Data

-- Names Table
SELECT name, gender, state, year, births  
FROM names;

-- Region Table
SELECT state, region FROM regions;

-- Total births recorded per region each year
SELECT regions.region, names.year, SUM(births) AS total_births
FROM names
JOIN regions ON names.state = regions.state
GROUP BY regions.region, names.year
ORDER BY regions.region, names.year;

-- Question 1 : What is the total number of unique baby names recorded?
SELECT COUNT(DISTINCT name) AS unique_names   
FROM names; 

--Answer: the total number of unique baby names recorded is 22240

-- Question 2: What are the Top 5 most popular and 5 least porpular names by gender across all years?
SELECT gender, name, SUM(births) AS total_births
FROM names
GROUP BY gender, name
ORDER BY total_births DESC;

-- Answer: The top 5 most popular and 5 least popular names by gender across all years are; 
-- i. Michael,Christopher, Matthew, Joshua, Jessica
-- ii. Kyriakos, Bhavin, Deema, Tamsen, Elleanna

-- Question 3: What are the top names for the first 3 early (1980, 1981,1982) years and last 3 recent years?
SELECT year, name, births
FROM(
	SELECT year, name, births,
			RANK() OVER (PARTITION BY year 
			ORDER BY births DESC)AS rank 
			FROM names) ranked
WHERE rank <= 3;
-- Answer: The top names for the first 3 early and last 3 recent years are;
					-- 1980 : Michael and Jennifer
					-- 1981: Michael and Jennifer
					-- 1982: Michael and Christopher
					-- 2007: Daniel, Anthony and Angel
					-- 2008: Daniel, Anthony and Angel
					-- 2009: Daniel,Isabella and Anthony

-- Question 4: What is the top-most popular baby names of all time by total births?
SELECT name, SUM(births) AS total_births
FROM names
GROUP BY name
ORDER BY total_births DESC
LIMIT 1;

-- Answer: The top-most popular baby name of all time by total births is Michael

-- Question 5: What are the top 10 most popular baby names of all time by total births?
SELECT name, SUM(births) AS total_births
FROM names
GROUP BY name
ORDER BY total_births DESC
LIMIT 10;

-- Answer : The top 10 most popular baby names of all time by total births are;
								-- Michael, Christopher, Matthew, Joshua, Jessica, 
								-- Daniel, David, Ashley, James and Andrew

-- Question 6: What are the top names for each year?		
SELECT year, name, births
FROM(
	SELECT year, name, births,
			RANK() OVER (PARTITION BY year 
			ORDER BY births DESC)AS rank 
			FROM names) ranked
WHERE rank <= 1;
-- Answer: The top names from 1980 to 1993 is Michael, 
-- while Jessica is the top name for the year 1994 and the top name from 1995 to 2009 is Daniel

-- Question 7: Which state had the highest number of births in total?
SELECT state, SUM(births) AS total_births
FROM names
GROUP BY state
ORDER BY total_births DESC
LIMIT 1;
-- ANSWER: The state with the highest number of births in total is Califonia (CA) with a total of 14076348 births

-- Question 8: What are the top 5 names per region?
SELECT region, name, total_births
FROM(
	SELECT regions.region, names.name, SUM(births) AS total_births,
			RANK() OVER (PARTITION BY regions.region ORDER BY SUM(births) DESC) AS rank
FROM names
JOIN regions ON names.state = regions.state
GROUP BY regions.region, names.name)
ranked
WHERE rank <= 5;

-- ANSWER : The top 5 names per region include; 
			 --i.) Mid_Atlantic: Michael, Matthew, Christopher , Joseph , Daniel.
		    --ii.) Midwest: Michael, Matthew, Joshua, Christopher, Andrew
		   --iii.) Mountain: Michael, Joshua, Christopher, Matthew, Jessica
		    --iv.) New_England: Michael, Joshua, Christopher, Matthew, Jessica
			 --v.) Pacific: Michael, Christopher, Daniel, David, Jessica
			 --vi) South Christopher, Michael, Joshua, James, Matthew

-- Question 9: What is the total birth rate for each year?
SELECT year, SUM(births) AS total_births
FROM names
GROUP BY year
ORDER BY year;

-- Answer: The trend of the total birth rate for each year showed that more births were recorded in 1990 

--  Question 10: Which year had the highest number of births recorded?
SELECT year, SUM(births) AS total_births
FROM names
GROUP BY year
ORDER BY total_births DESC
LIMIT 1;

-- Answer: The highest number of births was recorded in the year 1990

-- Question 11: Which of the top 5 states has the highest number of births in total?
SELECT state, SUM(births) AS total_births
FROM names
GROUP BY state
ORDER BY total_births DESC
LIMIT 5;

--Answers: CA, TX, NY, FL, IL

-- Question 12: Which Top 5 names were the most popular in CA?
SELECT name, SUM(births) AS total_births
FROM names
WHERE state = 'CA'
GROUP BY name
ORDER BY total_births DESC
LIMIT 5;

-- Answer: The Top 5 names were the most popular in CA are Michael, Daniel, Christopher, David, Jessica.

-- Question 13: Which Top 5 names were the most popular in the states with the highest total births?
SELECT state, name, total_births 
	FROM (
	SELECT state, name, SUM(births) AS total_births,
		RANK() OVER (PARTITION BY state ORDER BY SUM(births) DESC) AS rank 
FROM names
WHERE state IN ( 'CA', 'TX', 'NY', 'FL', 'IL')
GROUP BY state, name
) ranked
WHERE rank <= 5
ORDER BY state, rank;

-- Answer: CA - Michael, Daniel, Christopher, David, Jessica
		-- FL - Michael, Christopher, Joshua, Matthew, Ashley
		-- IL - Michael, Matthew, Daniel, Christopher, Jessica
		-- NY - Michael, Christopher, Matthew, Joseph, Daniel
		-- TX - Christopher, Michael, Jose, Joshua, David
		
-- Question 14,  What are the top 10 states with the birth name 'Michael'? 
SELECT state, SUM(births) AS total_births
FROM names
WHERE name = 'Michael'
GROUP BY state
ORDER BY total_births DESC
LIMIT 10;

-- Answer: The top 10 states with the birth name 'Michael' are: 
-- CA, NY, TX, PA, IL, FL, OH, NJ, MI, MA 

-- Question 15: How do the years with a spike in birth count for the name 'Michael' compare?
SELECT year, SUM(births) AS total_births
FROM names
WHERE name = 'Michael'
GROUP BY year
ORDER BY year;
Answer: 
-- Answer: There is a notable decline in the spike in birth count for the name 'Michael'.

-- Question 16: How do the years with a spike in birth count for the name 'Michael' compare?
SELECT year, SUM(births) AS total_births
FROM names
WHERE name = 'Michael'
GROUP BY year
ORDER BY year;
