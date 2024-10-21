{{ config(materialized='view')}}
SELECT 
    ticket_no, 
    flight_id, 
    boarding_no, 
    seat_no
FROM 
    airflow.cdc_public.boarding_passes
