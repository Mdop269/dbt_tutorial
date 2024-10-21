INSERT INTO Fact_Flights (flight_id, ticket_no, book_ref, fare_conditions, boarding_no, seat_no,
                          scheduled_departure, scheduled_arrival, actual_departure, actual_arrival,
                          total_amount, status, departure_airport_code, arrival_airport_code)
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
    aircrafts_data.cdc_public.ticket_flights tf
JOIN 
    aircrafts_data.cdc_public.tickets t ON tf.ticket_no = t.ticket_no  -- Inferred relationship
JOIN 
    aircrafts_data.cdc_public.flights f ON tf.flight_id = f.flight_id  -- Inferred relationship
LEFT JOIN 
    aircrafts_data.cdc_public.boarding_passes bp ON tf.ticket_no = bp.ticket_no AND tf.flight_id = bp.flight_id
