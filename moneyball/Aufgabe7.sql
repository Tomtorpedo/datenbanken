SELECT
player.first_name AS Vorname,
player.last_name AS Nachname
FROM salary
INNER JOIN player ON salary.player_id=player.id
ORDER BY salary.salary DESC
LIMIT 1
;
