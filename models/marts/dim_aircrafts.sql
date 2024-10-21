-- models/dim_aircrafts.sql
{{ config(materialized='view') }}

WITH aircraft_data AS (
    SELECT
        DISTINCT aircraft_code,
        model,
        range
    FROM 
        {{ ref('aircrafts_data') }}  -- reference the raw aircrafts_data table in dbt
)

SELECT * FROM aircraft_data;
