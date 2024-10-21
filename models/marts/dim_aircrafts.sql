-- models/marts/dim_aircrafts.sql
{{ config(materialized='view') }}

WITH aircraft_data AS (
    SELECT
        DISTINCT "aircraft_code",
        "model",
        "range"
    FROM 
        {{ source('cdc_public', 'aircrafts_data') }}  -- Ensure the table name is correct
)

SELECT * FROM aircraft_data;
