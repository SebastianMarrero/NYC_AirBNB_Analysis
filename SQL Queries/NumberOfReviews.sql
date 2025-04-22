select neighbourhood_cleansed, round(avg(number_of_reviews)::numeric,2)
as "Average Total Reviews" from listings 
group by neighbourhood_cleansed
order by "Average Total Reviews" Desc