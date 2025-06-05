SELECT 
year AS Jahr,
ROUND(AVG(salary),2) As Durchschnittsgehalt
FROM 
salary
GROUP BY
year 
ORDER BY
year DESC
;