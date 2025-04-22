SELECT
  SUM(CASE WHEN price IS NULL THEN 1 ELSE 0 END) AS missing_price,
  SUM(CASE WHEN neighbourhood_cleansed IS NULL THEN 1 ELSE 0 END) AS missing_neighbourhood,
  SUM(CASE WHEN room_type IS NULL THEN 1 ELSE 0 END) AS missing_room_type, 
  neighbourhood_cleansed
FROM listings group by neighbourhood_cleansed
order by missing_price desc;