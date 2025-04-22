SELECT 
    id, listing_url,
    name,
    neighbourhood_cleansed,
    number_of_reviews
FROM listings
ORDER BY number_of_reviews DESC
LIMIT 10;