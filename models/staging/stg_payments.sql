select 
id as customer_id,
orderid as order_id,
sum(amount/100) as amount
from raw.stripe.payment
where status like '%success%'
group by 1,2