{{ config(materialized='view') }}

SELECT
    tf.flight_id, -- here i joined ticket flight 
    f.flight_no,
    f.scheduled_departure,
    f.scheduled_arrival,
    f.departure_airport,
    f.arrival_airport,
    f.status,
    f.aircraft_code
FROM
    airflow.cdc_public.flights AS f
JOIN 
    airflow.cdc_public.ticket_flights AS tf ON f.flight_id = tf.flight_id  -- Join on flight_id
