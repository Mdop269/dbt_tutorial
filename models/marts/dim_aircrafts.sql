-- models/marts/dim_aircrafts.sql
{{ config(materialized='table') }}

WITH aircraft_data AS (
    SELECT
        DISTINCT aircraft_code,
        model,
        range
    FROM 
        {{ source('cdc_public', 'aircrafts_data') }}  -- Use the source function
)

SELECT * FROM aircraft_data;
