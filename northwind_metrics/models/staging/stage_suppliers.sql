WITH source AS (
    SELECT * FROM {{ source('northwind', 'territories')}}
)

SELECT * FROM source