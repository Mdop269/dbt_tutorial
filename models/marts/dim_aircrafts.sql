/* models/marts/dim_aircrafts.sql  */


{{ config(materialized='view') }}

select distinct aircraft_code, model, range
from {{ source("cdc_public", "aircrafts_data") }}  -- Ensure the table name is correct




/* models/marts/dim_aircrafts.sql */
/* {{ config(materialized='view') }} */
/*
with aircraft_data1 as (
    select distinct aircraft_code, model, range
    from {{ source("cdc_public", "aircrafts_data") }}  -- Ensure the table name is correct
)

select *
from aircraft_data;  -- Add this line to select data from the CTE


*/
