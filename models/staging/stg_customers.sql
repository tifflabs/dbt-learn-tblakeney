select
    a.id as customer_id,
    a.first_name,
    a.last_name,
    b.orderid as order_id,
    b.amount 
from raw.jaffle_shop.customers as a left join raw.stripe.payment as b on a.id=b.id
where b.status like '%success%'
