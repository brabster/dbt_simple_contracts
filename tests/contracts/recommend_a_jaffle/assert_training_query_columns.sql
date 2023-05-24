SELECT
    customer_id + 1,
    order_id + 1,
    order_date + INTERVAL 1 DAY,
    status || 'x'
FROM {{ ref('orders') }}
LIMIT 0