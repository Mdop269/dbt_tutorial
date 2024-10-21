SELECT 
    tf.flight_id,
    tf.ticket_no,
    t.book_ref,
    tf.fare_conditions,
    bp.boarding_no,
    bp.seat_no,
    f.scheduled_departure,
    f.scheduled_arrival,
    f.actual_departure,
    f.actual_arrival,
    tf.amount AS total_amount,  -- Ticket amount from ticket_flights
    f.status,
    f.departure_airport AS departure_airport_code,
    f.arrival_airport AS arrival_airport_code
FROM 
    airflow.cdc_public.ticket_flights tf
JOIN 
    airflow.cdc_public.tickets t ON tf.ticket_no = t.ticket_no  -- Inferred relationship
JOIN 
    airflow.cdc_public.flights f ON tf.flight_id = f.flight_id  -- Inferred relationship
LEFT JOIN 
    airflow.cdc_public.boarding_passes bp ON tf.ticket_no = bp.ticket_no AND tf.flight_id = bp.flight_id