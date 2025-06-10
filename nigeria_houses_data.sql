SELECT 
	* 
FROM 
	new_schema.nigeria_houses_data;
    
    
-- Clean & understand nulls
SELECT 
    COUNT(*) AS total,
    COUNT(bedrooms) AS bedrooms_present,
    COUNT(bathrooms) AS bathrooms_present,
    COUNT(toilets) AS toilets_present,
    COUNT(parking_space) AS parking_present,
    COUNT(title) AS title_present,
    COUNT(town) AS town_present,
    COUNT(state) AS state_present,
    COUNT(price) AS price_present
FROM nigeria_houses_data;

-- update wrong informations
UPDATE nigeria_houses_data
SET state = 'Lagos'
WHERE town IN ('Ajah', 'Lekki', 'mowe town', 'mowe ofada', 'agege', 'ketu', 'ojo', 'alimosho', 'ikeja', 'yaba', 'victoria island (VI)', 'ikoyi') AND state = 'Anambara';

UPDATE nigeria_houses_data
SET state = 'Abuja'
WHERE town IN ('gwarinpa', 'jabi' ) AND state = 'Anambara';


-- Price by Title vs Town (“Luxury mismatch”)
SELECT 
	title,
    town,
    ROUND(avg(price), 0) AS avg_price,
    COUNT(*) AS Listings
FROM nigeria_houses_data
GROUP BY title, town
HAVING Listings > 20 
ORDER BY avg_price DESC;


-- Bathroom Premium per State
SELECT 
	state, bathrooms,
    ROUND(avg(price), 0) AS avg_price,
    COUNT(*) AS Listing
FROM nigeria_houses_data
WHERE bathrooms <=3
GROUP BY state, bathrooms
HAVING Listing > 20 
ORDER BY state, bathrooms;


-- Toilets vs Price
SELECT 
    toilets,
    ROUND(AVG(price), 0) AS avg_price,
    COUNT(*) AS listings
FROM nigeria_houses_data
GROUP BY toilets
HAVING listings > 10
ORDER BY toilets;


-- Outlier Towns in Expensive States
WITH state_avg AS (
  SELECT state, ROUND(AVG(price), 0) AS state_avg_price
  FROM nigeria_houses_data
  GROUP BY state
),
town_avg AS (
  SELECT town, state, ROUND(AVG(price), 0) AS town_avg_price
  FROM nigeria_houses_data
  GROUP BY town, state
)
SELECT 
    t.state,
    t.town,
    t.town_avg_price,
    s.state_avg_price,
    t.town_avg_price - s.state_avg_price AS deviation
FROM town_avg t
JOIN state_avg s ON t.state = s.state
ORDER BY deviation ASC;
