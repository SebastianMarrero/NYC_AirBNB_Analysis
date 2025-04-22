SELECT 
    neighbourhood_cleansed,
    ROUND(AVG(reviews_per_month)::numeric, 2) AS "Average reviews per month"
FROM listings
WHERE reviews_per_month IS NOT NULL
GROUP BY neighbourhood_cleansed
ORDER BY "Average reviews per month" DESC;