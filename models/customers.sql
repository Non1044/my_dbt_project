with customers as (
    select id,first_name,last_name
    from `dbt-tutorial`.jaffle_shop.customers
),

orders as (
    select id,user_id,order_date,status
    from `dbt-tutorial`.jaffle_shop.orders
),

customer_orders as (
    select 
        user_id,
        min(order_date) as first_order,
        max(order_date) as most_recent_order,
        count(id) as number_of_orders
    from orders
    group by user_id
),

final as (
    select 
        a.id,
        a.first_name,
        a.last_name,
        b.first_order,
        b.most_recent_order,
        b.number_of_orders
    from customers as a
    left join customer_orders as b
    on a.id=b.user_id
)

select * from final