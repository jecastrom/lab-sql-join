SELECT
    c.`name` AS film_category,
    count(fc.film_id) AS number_of_films
FROM
    category c
    INNER JOIN film_category AS fc ON c.category_id = fc.category_id
GROUP BY
    1
ORDER BY
    2 DESC l;