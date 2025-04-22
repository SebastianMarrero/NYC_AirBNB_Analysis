SELECT 
    TO_CHAR(c.date, 'YYYY-MM') AS month,
    l.neighbourhood_cleansed,
    ROUND(AVG(c.price)::numeric, 2) AS avg_price
FROM calendar c
JOIN listings l ON c.listing_id = l.id
WHERE c.available = 't'
GROUP BY TO_CHAR(c.date, 'YYYY-MM'), l.neighbourhood_cleansed
ORDER BY l.neighbourhood_cleansed;