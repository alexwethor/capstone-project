WITH temp_table AS (
    SELECT DISTINCT
    ride_id,
    rideable_type,
    DATETIME_TRUNC(started_at, SECOND) AS started_at_clean, 
    DATETIME_TRUNC(ended_at, SECOND) AS ended_at_clean,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual,
    TIMESTAMP_DIFF(DATETIME_TRUNC(ended_at, SECOND), DATETIME_TRUNC(started_at, SECOND), SECOND) / 60.0 AS ride_length_minutes,
    CASE EXTRACT(DAYOFWEEK FROM DATETIME_TRUNC(started_at, SECOND))
      WHEN 1 THEN 'Sun'
      WHEN 2 THEN 'Mon'
      WHEN 3 THEN 'Tues'
      WHEN 4 THEN 'Wed'
      WHEN 5 THEN 'Thurs'
      WHEN 6 THEN 'Fri'
      WHEN 7 THEN 'Sat'
    END AS week_start,
    CASE EXTRACT(MONTH FROM DATETIME_TRUNC(started_at, SECOND))
      WHEN 1 THEN 'Jan'
      WHEN 2 THEN 'Feb'
      WHEN 3 THEN 'Mar'
      WHEN 4 THEN 'Apr'
      WHEN 5 THEN 'May'
      WHEN 6 THEN 'Jun'
      WHEN 7 THEN 'Jul'
      WHEN 8 THEN 'Aug'
      WHEN 9 THEN 'Sept'
      WHEN 10 THEN 'Oct'
      WHEN 11 THEN 'Nov'
      WHEN 12 THEN 'Dec'
    END AS month_start,
    EXTRACT(HOUR FROM DATETIME_TRUNC(started_at, SECOND)) AS hour_start
  FROM `curious-helix-447421-d0.bike_trips.bike_trips_combined_data`
)

SELECT
(SELECT COUNT(*) FROM temp_table WHERE ride_id IS NULL) AS ride_id_null_count,
(SELECT COUNT(*) FROM temp_table WHERE rideable_type IS NULL) AS rideable_type_null_count,
(SELECT COUNT(*) FROM temp_table WHERE started_at_clean IS NULL) AS started_at_clean_null_count,
(SELECT COUNT(*) FROM temp_table WHERE ended_at_clean IS NULL) AS ended_at_clean_null_count,
(SELECT COUNT(*) FROM temp_table WHERE start_station_name IS NULL) AS start_station_name_null_count,
(SELECT COUNT(*) FROM temp_table WHERE start_station_id IS NULL) AS start_station_id_null_count,
(SELECT COUNT(*) FROM temp_table WHERE end_station_name IS NULL) AS end_station_name_null_count,
(SELECT COUNT(*) FROM temp_table WHERE end_station_id IS NULL) AS end_station_id_null_count,
(SELECT COUNT(*) FROM temp_table WHERE start_lat IS NULL) AS start_lat_null_count,
(SELECT COUNT(*) FROM temp_table WHERE start_lng IS NULL) AS start_lng_null_count,
(SELECT COUNT(*) FROM temp_table WHERE end_lat IS NULL) AS end_lat_null_count,
(SELECT COUNT(*) FROM temp_table WHERE end_lng IS NULL) AS end_lng_null_count,
(SELECT COUNT(*) FROM temp_table WHERE member_casual IS NULL) AS member_casual_null_count

