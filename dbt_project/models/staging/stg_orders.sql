with source as (
    select * from {{ source('main', 'raw_orders') }}
)

select
    id as order_id,
    user_id,
    product_name,
    amount,
    order_date
from source
