/*Generate a list of matches where at least one team scored 5 or more goals.*/
-- Select matches where a team scored 5+ goals
SELECT
	country_id,
    season,
	id
FROM match
WHERE home_goal >=5 OR away_goal >=5;
---------------------------------------------------

query result
country
match
country_id	season	id
1	2011/2012	764
1	2011/2012	766
1	2011/2012	781
1	2011/2012	791
1	2011/2012	854
