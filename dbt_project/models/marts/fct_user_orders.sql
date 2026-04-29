with users as (
    select * from {{ ref('stg_users') }}
),

orders as (
    select * from {{ ref('stg_orders') }}
),

user_orders as (
    select
        user_id,
        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(order_id) as number_of_orders,
        sum(amount) as total_amount
    from orders
    group by 1
),

final as (
    select
        users.user_id,
        users.user_name,
        users.user_email,
        user_orders.first_order_date,
        user_orders.most_recent_order_date,
        coalesce(user_orders.number_of_orders, 0) as number_of_orders,
        coalesce(user_orders.total_amount, 0) as total_lifetime_amount
    from users
    left join user_orders using (user_id)
)

select * from final
