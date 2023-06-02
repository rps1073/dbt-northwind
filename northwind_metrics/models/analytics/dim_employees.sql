SELECT
    {{ dbt_utils.generate_surrogate_key(['e.employeeid', 't.territoryid', 'r.regionid']) }} employee_dim_id,
    e.employeeid AS employee_id,
    t.territoryid AS territory_id,
    r.regionid AS region_id,
    e.lastname AS last_name,
    e.firstname AS first_name,
    e.title,
    e.titleofcourtesy AS title_of_courtesy,
    e.birthdate AS birth_date,
    e.hiredate AS hire_date,
    e.address,
    e.city,
    e.region,
    e.postalcode AS postal_code,
    e.country,
    e.homephone,
    e.extension,
    e.reportsto,
    t.territorydescription AS territory_description,
    r.regiondescription AS region_description
FROM {{ref('stage_employees')}} e
JOIN {{ref('stage_employee_territories')}} et
ON e.employeeid = et.employeeid
JOIN {{ref('stage_territories')}} t
ON et.territoryid = t.territoryid
JOIN {{ref('stage_regions')}} r
ON t.regionid = r.regionid
