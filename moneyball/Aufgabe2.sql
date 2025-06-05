SELECT
year AS Jahr,
salary AS Gehalt
FROM
salary INNER JOIN player
ON player.id=salary.player_id
WHERE player.first_name LIKE 'Cal' AND player.last_name LIKE 'Ripken'
ORDER BY year DESC
;