{{ config(error_if = '=0', warn_if = '=0') }}

SELECT
    status,
    COUNT(1) num_orders
FROM {{ ref('orders') }}
GROUP BY status