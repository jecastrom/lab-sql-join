SELECT
    concat((last_name), ', ', (first_name)) AS staff_member_name,
    sum(amount) AS total_sales_august_2005
FROM
    staff s
    INNER JOIN payment p ON s.staff_id = p.staff_id
WHERE
    monthname(payment_date) = 'August'
    AND year(payment_date) = 2005
GROUP BY
    1;