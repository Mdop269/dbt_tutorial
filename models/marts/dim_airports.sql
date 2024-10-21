{{ config(materialized='view') }}

SELECT 
    airport_code,  
    airport_name, 
    city, 
    coordinates, 
    timezone
FROM 
    airflow.cdc_public.airports_data