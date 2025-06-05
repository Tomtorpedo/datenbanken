WITH 
    low_dph(player) AS (
        SELECT
        player.id
        FROM player
        INNER JOIN salary ON player.id=salary.player_id AND salary.year=2001
        INNER JOIN performance ON player.id=performance.player_id AND performance.year=2001
        WHERE performance.H>0
        GROUP BY player.id
        ORDER BY (salary.salary/performance.H) ASC, player.first_name,player.last_name
        LIMIT 10
    ),
    low_rbiph(player) AS (
        SELECT
        player.id
        FROM player
        INNER JOIN salary ON player.id=salary.player_id AND salary.year=2001
        INNER JOIN performance ON player.id=performance.player_id AND performance.year=2001
        WHERE performance.RBI>0
        GROUP BY player.id
        ORDER BY (salary.salary/performance.RBI) ASC, player.first_name,player.last_name
        LIMIT 10
    )
    
SELECT 
player.first_name AS "Vorname",
player.last_name AS "Nachname"
FROM
player
INNER JOIN low_dph ON player.id=low_dph.player
INNER JOIN low_rbiph ON player.id=low_rbiph.player
ORDER BY player.last_name
;