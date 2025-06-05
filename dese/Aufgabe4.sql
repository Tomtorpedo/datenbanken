SELECT city AS "Stadt", COUNT(type) AS "Anzahl"
FROM
school 
WHERE type LIKE 'Public School'
GROUP BY city
ORDER BY COUNT(type) DESC, city 
LIMIT 10
;