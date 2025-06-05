SELECT
player.first_name AS Vorname,
player.last_name AS Nachname, 
salary.salary AS Gehalt
FROM player
INNER JOIN salary ON player.id=salary.player_id
WHERE salary.year=2001
ORDER BY salary.salary ASC, player.last_name, player.first_name, player.id
LIMIT 50
;