SELECT
    concat((last_name), ', ', (first_name)) AS staff_member_name,
    address
FROM
    staff s
    INNER JOIN address a ON s.address_id = a.address_id
ORDER BY
    1;