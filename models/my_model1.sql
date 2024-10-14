CREATE OR REPLACE TABLE my_filtered_data AS (
    SELECT
        *
    FROM
        electricity_data
    LIMIT 10
);
