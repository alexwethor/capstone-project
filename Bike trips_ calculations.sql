/*
# mean and maximum of ride length
SELECT
AVG(ride_length_minutes) AS avg_ride_length,
MAX(ride_length_minutes) AS max_ride_length
FROM `curious-helix-447421-d0.bike_trips.bike_trips_clean` 

# mean and maximum of ride length for each member type
SELECT
member_casual,
COUNT(*),
AVG(ride_length_minutes) AS avg_ride_length,
MAX(ride_length_minutes) AS max_ride_length
FROM `curious-helix-447421-d0.bike_trips.bike_trips_clean` 
GROUP BY member_casual
*/
