{{ config(materialized='view')}}
SELECT
    DISTINCT book_ref,
    book_date,
    total_amount
FROM
    bookings