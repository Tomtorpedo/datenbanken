SELECT 
team.name AS Team,
SUM(performance.H) AS "Anzahl Hits"
FROM performance
INNER JOIN team ON performance.team_id=team.id
WHERE performance.year=2001
GROUP BY team.id
ORDER BY SUM(performance.H) DESC
LIMIT 5
;
