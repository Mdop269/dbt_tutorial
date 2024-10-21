{{ config(materialized='view')}}
SELECT
    DISTINCT aircraft_code,
    seat_no,
    fare_conditions
FROM
    airflow.cdc_public.seats