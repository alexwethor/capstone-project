/* 
# Check how many total rows there are. Result: 5,779,568
SELECT
*
FROM curious-helix-447421-d0.bike_trips.bike_trips_combined_data

# Check how many distinct rows there are to identify duplicates. Result: 5,779,568 
SELECT DISTINCT 
*
FROM curious-helix-447421-d0.bike_trips.bike_trips_combined_data

# Idenitfy if there are any duplicate ride_id entries. Result: 5,779,357 distinct ride_ids found
SELECT
COUNT(ride_id) AS ride_id_count,
COUNT(DISTINCT ride_id) AS ride_id_distinct_count
FROM curious-helix-447421-d0.bike_trips.bike_trips_combined_data

# Identify which ride_id entires are duplicate
SELECT
ride_id,
COUNT(*) AS num_entries
FROM curious-helix-447421-d0.bike_trips.bike_trips_combined_data
GROUP BY ride_id
HAVING
  COUNT(*) > 1

# Investigate a ride_id with duplicate entires
SELECT *
FROM curious-helix-447421-d0.bike_trips.bike_trips_combined_data
WHERE ride_id = '1B57E6F3A5495300'
*/


