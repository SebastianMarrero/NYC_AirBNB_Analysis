select neighbourhood_cleansed, round(avg(price)::numeric, 2) as "Average Price" from
listings 
where price is not null
group by neighbourhood_cleansed 
order by avg(price) desc