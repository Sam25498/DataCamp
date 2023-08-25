/*
Summarizing results
After ranking each country in the 2000 Olympics by gold medals awarded, you want to return the top 3 countries in one row, as a comma-separated string. In other words, turn this:

| Country | Rank |
|---------|------|
| USA     | 1    |
| RUS     | 2    |
| AUS     | 3    |
| ...     | ...  |
into this:

USA, RUS, AUS
Instructions 1/2
50 XP
1
2
Rank countries by the medals they've been awarded.
*/

WITH Country_Medals AS (
  SELECT
    Country,
    COUNT(*) AS Medals
  FROM Summer_Medals
  WHERE Year = 2000
    AND Medal = 'Gold'
  GROUP BY Country)

  SELECT
    Country,
    -- Rank countries by the medals awarded
    RANK() OVER(ORDER BY Medals DESC) AS Rank
  FROM Country_Medals
  ORDER BY Rank ASC;
-----------------------------------------------------
query result
summer_medals
country	rank
USA	1
RUS	2
AUS	3
CHN	4
GER	5
ROU	6
NED	6
--Return the top 3 countries by medals awarded as one comma-separated string.
WITH Country_Medals AS (
  SELECT
    Country,
    COUNT(*) AS Medals
  FROM Summer_Medals
  WHERE Year = 2000
    AND Medal = 'Gold'
  GROUP BY Country),

  Country_Ranks AS (
  SELECT
    Country,
    RANK() OVER (ORDER BY Medals DESC) AS Rank
  FROM Country_Medals
  ORDER BY Rank ASC)

-- Compress the countries column
SELECT STRING_AGG(Country, ', ')
FROM Country_Ranks
-- Select only the top three ranks
WHERE Rank <= 3;
-----------------------------------------------------
query result
summer_medals
string_agg
USA, RUS, AUS

/*
EXPLANATION
This solution uses a combination of SQL techniques to solve the problem.
First, it uses a Common Table Expression (CTE) named Country_Medals to create a temporary table that contains each 
country and the number of gold medals they won in the year 2000. This is done using the SELECT statement to select the Country 
and COUNT(*) as Medals from the Summer_Medals table where the Year is 2000 and the Medal is 'Gold'. The GROUP BY clause is used to group the 
results by Country.
Next, another CTE named Country_Ranks is created. This CTE uses the RANK() window function to assign a rank to each country based 
on the number of medals they won, in descending order. The OVER clause specifies the order of the ranking, and the ORDER BY clause sorts 
the results by rank in ascending order.

Finally, the SELECT statement is used to select the countries from the Country_Ranks CTE where the rank is less than or equal to 3. 
The STRING_AGG function is used to concatenate the country names into a single string, separated by commas.

So, this solution first calculates the number of gold medals won by each country in the year 2000, then ranks the countries based on this
number, and finally returns the top 3 countries as a single, comma-separated string.
*/
