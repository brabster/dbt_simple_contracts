WITH statuses AS (
    SELECT 'placed' AS status
    UNION ALL SELECT 'shipped'
    UNION ALL SELECT 'completed'
    UNION ALL SELECT 'return_pending'
    UNION ALL SELECT 'returned'
)

SELECT
    status,
    SUM(IF(order_id IS NOT NULL, 1, 0)) count
FROM {{ ref('orders') }}
    RIGHT JOIN statuses USING(status)
GROUP BY status
HAVING count = 0
