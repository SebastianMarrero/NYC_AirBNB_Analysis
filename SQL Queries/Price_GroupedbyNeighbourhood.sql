select neighbourhood_cleansed, avg(price) as "average price", 
count(*) as "number of listings" from listings where price is not null
group by neighbourhood_cleansed order by avg(price) desc;