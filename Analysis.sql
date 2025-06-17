# number of trips taken and average trip length per month based on member type
SELECT 
member_casual,
month_start,
COUNT(ride_id) AS num_rides,
AVG(ride_length_minutes) AS avg_ride_length
FROM `curious-helix-447421-d0.bike_trips.bike_trips_clean` 
GROUP BY member_casual, month_start

# number of trips taken and average trip length per day of week based on member type 
SELECT 
member_casual,
week_start,
COUNT(ride_id) AS num_rides,
AVG(ride_length_minutes) AS avg_ride_length
FROM `curious-helix-447421-d0.bike_trips.bike_trips_clean` 
GROUP BY member_casual, week_start

# number of trips taken and average trip length per hour of the day based on member type 
SELECT 
member_casual,
hour_start,
COUNT(ride_id) AS num_rides,
AVG(ride_length_minutes) AS avg_ride_length
FROM `curious-helix-447421-d0.bike_trips.bike_trips_clean` 
GROUP BY member_casual, hour_start

# number of trips taken and average trip length per bike type based on member type 
SELECT 
member_casual,
rideable_type,
COUNT(ride_id) AS num_rides,
AVG(ride_length_minutes) AS avg_ride_length
FROM `curious-helix-447421-d0.bike_trips.bike_trips_clean` 
GROUP BY member_casual, rideable_type

# number of trips taken and average trip length per top 10 end stations used based on member type 
SELECT 
member_casual,
end_station_name,
COUNT(ride_id) AS num_rides,
AVG(ride_length_minutes) AS avg_ride_length
FROM `curious-helix-447421-d0.bike_trips.bike_trips_clean` 
GROUP BY member_casual, end_station_name
ORDER BY num_rides DESC
LIMIT 20

# number of trips taken and average trip length per top 10 start stations used based on member type 
SELECT 
member_casual,
start_station_name,
COUNT(ride_id) AS num_rides,
AVG(ride_length_minutes) AS avg_ride_length
FROM `curious-helix-447421-d0.bike_trips.bike_trips_clean` 
GROUP BY member_casual, start_station_name
ORDER BY num_rides DESC
LIMIT 20
