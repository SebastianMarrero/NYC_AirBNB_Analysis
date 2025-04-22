select room_type, count(*) as "number of listings" from listings
group by room_type order by count(*) desc