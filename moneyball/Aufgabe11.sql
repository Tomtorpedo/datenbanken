SELECT
player.first_name AS Vorname,
player.last_name AS Nachname,
(salary.salary/performance.H) AS "Dollar pro Hit"
FROM player
INNER JOIN salary ON player.id=salary.player_id AND salary.year=2001
INNER JOIN performance ON player.id=performance.player_id AND performance.year=2001
WHERE performance.H>0
GROUP BY player.id
ORDER BY (salary.salary/performance.H) ASC, player.first_name,player.last_name
LIMIT 10
;
