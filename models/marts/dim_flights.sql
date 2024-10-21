SELECT
    DISTINCT flight_id,
    flight_no,
    scheduled_departure,
    scheduled_arrival,
    departure_airport,
    arrival_airport,
    status,
    aircraft_code
FROM
    airflow.cdc_public.flights