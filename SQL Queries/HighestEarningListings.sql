select id, name, listing_url, host_id, price, daysoccupied365,
(price*daysoccupied365) as "estimated annual revenue"
from listings where price is not null
order by "estimated annual revenue" desc limit 10