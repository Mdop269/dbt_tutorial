{{ config(materialized='view')}}
SELECT
    tf.flight_id,
    f.flight_no,
    f.scheduled_departure,
    f.scheduled_arrival,
    f.departure_airport,
    f.arrival_airport,
    f.status,
    f.aircraft_code
FROM
    airflow.cdc_public.flights As f
JOIN 
    airflow.cdc_public.ticket_flights As tf ON f.flight_no = tf.flight_no 
                                       AND f.scheduled_departure = tf.scheduled_departure