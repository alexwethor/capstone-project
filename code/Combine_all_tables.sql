# Create a new table called bike_trips_combined_date that combines all 12 tables into one
CREATE TABLE IF NOT EXISTS bike_trips.bike_trips_combined_data AS (
SELECT * FROM curious-helix-447421-d0.bike_trips.bike_trips_2025_03 
UNION ALL
SELECT * FROM curious-helix-447421-d0.bike_trips.bike_trips_2025_02 
UNION ALL
SELECT * FROM curious-helix-447421-d0.bike_trips.bike_trips_2025_01 
UNION ALL
SELECT * FROM curious-helix-447421-d0.bike_trips.bike_trips_2024_12 
UNION ALL
SELECT * FROM curious-helix-447421-d0.bike_trips.bike_trips_2024_11 
UNION ALL
SELECT * FROM curious-helix-447421-d0.bike_trips.bike_trips_2024_10 
UNION ALL
SELECT * FROM curious-helix-447421-d0.bike_trips.bike_trips_2024_09 
UNION ALL
SELECT * FROM curious-helix-447421-d0.bike_trips.bike_trips_2024_08 
UNION ALL
SELECT * FROM curious-helix-447421-d0.bike_trips.bike_trips_2024_07
UNION ALL
SELECT * FROM curious-helix-447421-d0.bike_trips.bike_trips_2024_06
UNION ALL
SELECT * FROM curious-helix-447421-d0.bike_trips.bike_trips_2024_05
UNION ALL
SELECT * FROM curious-helix-447421-d0.bike_trips.bike_trips_2024_04
)
