SELECT
    f.title,
    count(fa.actor_id) AS number_of_actors
FROM
    film f
    INNER JOIN film_actor fa ON f.film_id = fa.film_id
GROUP BY
    f.film_id
ORDER BY
    2 DESC
LIMIT
    10;