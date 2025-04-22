select neighbourhood_cleansed, round(avg(price)::numeric, 2) as 
"Average Price" from listings group by neighbourhood_cleansed
order by "Average Price" Asc limit 10;