ALTER TABLE listings
ADD COLUMN DaysOccupied365 INT;

update listings 
set DaysOccupied365 = 365 - availability_365;