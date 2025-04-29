SELECT first_name, last_name, weight_kg
FROM (
    SELECT first_name, last_name, ROUND((weight*0.453592), 2) AS weight_kg
    FROM players
    WHERE weight IS NOT NULL
    ORDER BY weight ASC
    LIMIT 5
) AS lightest

UNION

SELECT first_name, last_name, weight_kg
FROM (
    SELECT first_name, last_name, ROUND((weight*0.453592), 2) AS weight_kg
    FROM players
    ORDER BY weight DESC
    LIMIT 5
) AS heaviest

ORDER BY weight_kg , last_name;
