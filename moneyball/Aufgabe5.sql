SELECT
team.name AS team
FROM player
INNER JOIN performance ON player.id=performance.player_id
INNER JOIN team ON performance.team_id=team.id
WHERE player.first_name LIKE 'Satchel' AND player.last_name LIKE 'Paige'
GROUP BY team.id
;