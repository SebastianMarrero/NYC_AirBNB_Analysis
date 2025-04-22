select neighbourhood_cleansed, room_type, round(avg(price)::numeric,2) as "average price" 
from listings
where price is not null
group by neighbourhood_cleansed, room_type
order by avg(price) desc