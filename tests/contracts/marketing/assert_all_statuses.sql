WITH statuses AS (
    SELECT 'placed' AS status
    UNION ALL SELECT 'shipped'
    UNION ALL SELECT 'completed'
    UNION ALL SELECT 'return_pending'
    UNION ALL SELECT 'returned'
)

SELECT
    status,
    COUNT(1) count
FROM {{ ref('orders') }}
    RIGHT JOIN statuses USING(status)
GROUP BY status
HAVING count == 0
