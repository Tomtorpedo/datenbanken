SELECT 
    first_name,last_name,birth_country
FROM players
WHERE 
    birth_country NOT LIKE 'USA'
GROUP BY
    first_name,
    last_name

    ;