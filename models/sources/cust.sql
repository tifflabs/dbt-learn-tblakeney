WITH
source AS (

  SELECT * FROM {{source('jaffle_shop','customers') }}

)
, renamed AS (

  SELECT 
    customer_id,                    
    first_name,
    last_name,
    first_order_date,
    order_id,
    most_recent_order_date,
    number_of_orders,
    ltv
  FROM source
  
)
SELECT * FROM renamed