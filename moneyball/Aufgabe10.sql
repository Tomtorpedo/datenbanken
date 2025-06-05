SELECT
player.first_name AS Vorname,
player.last_name AS Nachname,
salary.year AS Jahr,
salary.salary AS Gehalt,
performance.HR AS "Anzahl Homeruns"
FROM player 
INNER JOIN salary ON player.id=salary.player_id
INNER JOIN performance ON player.id=performance.player_id AND salary.year=performance.year AND salary.team_id=performance.team_id
GROUP BY player.id,salary.year
ORDER BY
player.id,salary.year DESC

;