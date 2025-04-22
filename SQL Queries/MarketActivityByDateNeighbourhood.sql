SELECT 
    TO_CHAR(date,'YYYY-MM') AS month,
    COUNT(DISTINCT listing_id) AS active_listings
FROM calendar c
WHERE available = 't'
GROUP BY month
ORDER BY month;