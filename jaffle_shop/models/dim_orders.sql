SELECT
    o.order_id
    , o.customer_id
    , o.order_date
    , o.status AS order_status
    , MAX(p.payment_created_at) AS last_payment_at
    , SUM(p.amount) AS total_amount_paid
FROM {{ ref('stg_orders') }} AS o
LEFT JOIN {{ ref('stg_success_stripe_payment') }} AS p
  ON o.order_id = p.order_id
GROUP BY 1, 2, 3, 4