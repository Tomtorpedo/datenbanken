SELECT 
    first_name,last_name,ROUND((weight*0.4536),2) AS "weight_kg"
FROM players
ORDER BY 
    weight DESC,last_name
LIMIT
    10
;