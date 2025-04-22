SELECT 
    host_is_superhost,
    ROUND(AVG(reviews_per_month)::numeric, 2) AS "Average reviews per Month"
FROM listings
WHERE reviews_per_month IS NOT NULL
GROUP BY host_is_superhost;