{{ config(materialized='view')}}
SELECT
    ticket_no,
    book_ref,
    passenger_id
FROM
    airflow.cdc_public.tickets