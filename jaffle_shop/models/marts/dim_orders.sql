{% set payment_methods = ['bank_transfer', 'credit_card', 'coupon', 'gift_card'] %}

SELECT
    o.order_id
    , o.customer_id
    , o.order_date
    {% for payment_method in payment_methods %}
    , COALESCE(op.{{ payment_method }}_amount, 0) AS {{ payment_method }}_amount
    {% endfor %}
    , COALESCE(op.total_amount, 0) AS total_amount

FROM {{ ref('stg_orders') }} AS o
LEFT JOIN {{ ref('int_payments_pivoted_to_orders') }} AS op
    ON o.order_id = op.order_id
