select order_id
,sum(payment_amount)
from {{ ref('stg_jstripe__payment') }}
group by 1
having sum(payment_amount)<=0