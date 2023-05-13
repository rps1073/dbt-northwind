WITH source AS (
    SELECT * FROM {{ source('northwind', 'categories')}}
)

SELECT * FROM source