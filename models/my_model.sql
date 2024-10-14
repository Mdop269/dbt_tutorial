SELECT
    period,
    respondent,
    respondent_name,
    fueltype,
    type_name,
    value,
    value_units
FROM
    electricity_data
WHERE
    period IS NOT NULL AND
    respondent IS NOT NULL AND
    respondent_name IS NOT NULL AND
    fueltype IS NOT NULL AND
    type_name IS NOT NULL AND
    value IS NOT NULL AND
    value_units IS NOT NULL
