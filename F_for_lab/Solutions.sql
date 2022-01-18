SELECT
    concat((last_name), ', ', (first_name)) AS customer_name,
    sum(amount) AS amount_total_paid
FROM
    customer c
    INNER JOIN payment p ON c.customer_id = p.customer_id
GROUP BY
    p.customer_id
ORDER BY
    1
LIMIT
    10;