SELECT
    id AS payment_id
    , orderid AS order_id
    , paymentmethod AS payment_method
    , CASE
        WHEN paymentmethod IN ('stripe', 'paypal', 'credit_card', 'gift_card') THEN 'credit'
        ELSE 'cash'
        END AS payment_type
    , status AS payment_status
    , amount AS amount_cents
    , amount / 100.0 AS amount
    , status = 'success' AS is_completed_payment
    , TIMESTAMP(created) AS created_at

FROM {{ source('stripe', 'payment') }}