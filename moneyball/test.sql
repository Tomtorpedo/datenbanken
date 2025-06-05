SELECT
player.first_name AS Vorname,
player.last_name AS Nachname,
salary.salary,
performance.H
FROM player
INNER JOIN salary ON player.id=salary.player_id AND salary.year=2001
INNER JOIN performance ON player.id=performance.player_id AND performance.year=2001
WHERE player.first_name LIKE 'Julio' AND player.last_name LIKE 'Zuleta'
;