select host_id, round(sum(price*daysoccupied365/12)::numeric,2) as "estimated monthly revenue" 
from listings
where price is not null
group by host_id
order by "estimated monthly revenue" desc