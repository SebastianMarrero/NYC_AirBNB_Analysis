-- Consider price per value
select host_is_superhost, count(*), round(avg(review_scores_rating)::numeric,2) as "average rating",
round(avg(price)::numeric,2) as "average listing price" from listings where price is not null
and host_is_superhost is not null group by host_is_superhost;