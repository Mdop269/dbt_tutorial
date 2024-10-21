{{ config(materialized='view')}}
SELECT
    book_ref,
    book_date,
    total_amount
FROM
    bookings