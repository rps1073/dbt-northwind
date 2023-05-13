WITH source AS (
    SELECT * FROM {{ source('northwind', 'customers')}}
)

SELECT * FROM source