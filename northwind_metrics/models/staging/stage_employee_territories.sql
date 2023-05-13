WITH source AS (
    SELECT * FROM {{ source('northwind', 'employee_territories')}}
)

SELECT * FROM source