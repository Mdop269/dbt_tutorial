


{{ config(materialized='view') }}

select aircraft_code, model, range
from {{ source("cdc_public", "aircrafts_data") }}  -- Ensure the table name is correct

