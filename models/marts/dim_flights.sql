{{ config(materialized='view')}}
SELECT
    tf.flight_id,
    flight_no,
    scheduled_departure,
    scheduled_arrival,
    departure_airport,
    arrival_airport,
    status,
    aircraft_code
FROM
    airflow.cdc_public.flights
JOIN 
    airflow.cdc_public.ticket_flights As tf ON f.flight_no = tf.flight_no 
                                       AND f.scheduled_departure = tf.scheduled_departure