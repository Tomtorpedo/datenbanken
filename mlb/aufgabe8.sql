SELECT 
    ROUND(AVG(weight),2) AS "Mittleres Gewicht",
    ROUND(AVG(height),2) AS "Mittlere Groesse"
FROM players
WHERE 
    debut > '2000-01-01'
;