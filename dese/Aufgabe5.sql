SELECT city AS "Stadt", COUNT(type) AS "Anzahl"
FROM
school 
WHERE type LIKE 'Public School'
GROUP BY city
HAVING COUNT(type)<=3
ORDER BY COUNT(type) DESC, city 
;