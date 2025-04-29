SELECT 
    birth_country AS "Land",COUNT(birth_country) AS "Anzahl Spieler"
FROM players
WHERE
    birth_country IS NOT Null
GROUP BY 
    birth_country
ORDER BY 
    COUNT(first_name) DESC
;