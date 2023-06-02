SELECT
    customerId AS customer_id,
    companyName AS company_name,
    contactName as contact_name,
    contactTitle AS contact_title,
    address,
    city,
    region AS customer_region,
    postalCode AS postal_code,
    country,
    phone,
    fax
FROM {{ref('stage_customers')}}