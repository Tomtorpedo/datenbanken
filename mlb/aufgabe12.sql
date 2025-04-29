SELECT 
    first_name,last_name,ROUND((weight*0.4536),2) AS "weight_kg"
FROM players
WHERE
    weight IS NOT Null
    AND 
UNION
SELECT 
    first_name,last_name,ROUND((weight*0.4536),2) AS "weight_kg"
FROM players
WHERE
    weight IS NOT Null
ORDER BY
    weight,last_name
LIMIT
    5
;