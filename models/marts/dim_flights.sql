{{ config(materialized='view') }}

SELECT
    flight_id, -- here i joined ticket flight 
    flight_no,
    scheduled_departure,
    scheduled_arrival,
    departure_airport,
    arrival_airport,
    status,
    aircraft_code
FROM
    airflow.cdc_public.flights AS f

