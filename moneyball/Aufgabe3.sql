SELECT
performance.year AS Jahr,
performance.HR AS "Anzahl Homeruns"
FROM player 
INNER JOIN performance ON player.id=performance.player_id
WHERE player.first_name LIKE 'Ken' AND player.last_name LIKE 'Griffey' AND birth_year=1969
ORDER BY performance.year DESC
;