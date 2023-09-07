SELECT
    id AS payment_id
    , orderid AS order_id
    , paymentmethod AS payment_method
    , created AS payment_created_at
    , amount
FROM {{ source('stripe', 'payment') }}
WHERE status = 'success'