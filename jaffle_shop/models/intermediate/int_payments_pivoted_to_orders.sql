{% set payment_methods = ['bank_transfer', 'credit_card', 'coupon', 'gift_card'] %}

SELECT
    order_id
    {% for payment_method in payment_methods %}
    
    , SUM(
            CASE
                WHEN payment_method = '{{ payment_method }}' AND payment_status = 'success'
                    THEN amount
                ELSE 0
            END
        ) AS {{ payment_method }}_amount

    {% endfor %}
    , SUM(CASE WHEN payment_status = 'success' THEN amount END) AS total_amount
FROM {{ ref('stg_stripe_payments') }}

GROUP BY 1
