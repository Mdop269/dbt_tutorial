-- -- models/marts/dim_aircrafts.sql
-- {{ config(materialized='view') }}

-- WITH aircraft_data AS (
--     SELECT
--         DISTINCT "aircraft_code",
--         "model",
--         "range"
--     FROM 
--         {{ source('cdc_public', 'aircrafts_data') }}  -- Ensure the table name is correct
-- )

-- SELECT * FROM aircraft_data;

-- models/marts/dim_aircrafts.sql
{{ config(materialized='table') }}

WITH aircraft_data AS (
    SELECT
        DISTINCT "aircraft_code",  -- If the column is lowercase, you need quotes around it
        "model",
        "range"
    FROM 
        airflow.cdc_public.aircrafts_data  -- Ensure the schema and table name are correct
)

SELECT * FROM aircraft_data;

