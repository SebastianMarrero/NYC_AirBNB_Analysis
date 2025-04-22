SELECT 
    ROUND(price::numeric, -1) AS price_bucket,  -- bucket prices by $10
    ROUND(AVG(reviews_per_month)::numeric, 2) AS "Average Reviews Per Month"
FROM listings
WHERE reviews_per_month IS NOT NULL
GROUP BY price_bucket
ORDER BY price_bucket;