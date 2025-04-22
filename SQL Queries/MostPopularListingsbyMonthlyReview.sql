SELECT 
    id, listing_url,
    name,
    neighbourhood_cleansed,
    reviews_per_month
FROM listings
WHERE reviews_per_month IS NOT NULL
ORDER BY reviews_per_month DESC
LIMIT 10;