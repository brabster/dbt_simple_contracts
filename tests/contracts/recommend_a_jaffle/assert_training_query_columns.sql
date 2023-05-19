SELECT
    customer_id,
    order_id,
    order_date,
    status
FROM {{ ref('orders') }}
LIMIT 0