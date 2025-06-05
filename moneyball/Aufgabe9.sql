SELECT
team.name AS Team,
ROUND(AVG(salary.salary),2) AS Durchschnittsgehalt
FROM salary
INNER JOIN team ON salary.team_id=team.id
WHERE salary.year=2001
GROUP BY salary.team_id
ORDER BY AVG(salary.salary) 
LIMIT 5
;