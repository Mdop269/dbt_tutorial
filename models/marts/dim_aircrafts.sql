-- models/marts/dim_aircrafts.sql
{{ config(materialized='table') }}

WITH aircraft_data AS (
    SELECT
        DISTINCT "aircraft_code",
        "model",
        "range"
    FROM 
        {{ source('my_snowflake_schema', 'aircrafts_data') }}  -- Ensure the table name is correct
)

SELECT * FROM aircraft_data;
