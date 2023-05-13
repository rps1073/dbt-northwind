WITH source AS (
    SELECT * FROM {{ source('northwind', 'regions')}}
)

SELECT * FROM source