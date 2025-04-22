select host_is_superhost, room_type, count(*), round(avg(price)::numeric, 2) 
as "average listing price" from listings where host_is_superhost is not null
group by host_is_superhost, room_type
order by room_type, host_is_superhost;

