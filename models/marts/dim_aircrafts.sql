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

-- -- models/marts/dim_aircrafts.sql
-- {{ config(materialized='view') }}

-- WITH aircraft_data AS (
--     SELECT
--         DISTINCT aircraft_code,  -- No quotes, Snowflake assumes uppercase
--         model,
--         range
--     FROM 
--         airflow.cdc_public.aircrafts_data
-- )

-- SELECT * FROM aircraft_data;

WITH aircraft_data AS (
    SELECT DISTINCT
        aircraft_code,
        model,
        range
    FROM 
        airflow.cdc_public.aircrafts_data
)

SELECT * FROM aircraft_data;
