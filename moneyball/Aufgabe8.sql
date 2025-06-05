SELECT
salary.salary AS Gehalt
FROM performance
INNER JOIN salary ON performance.player_id=salary.player_id
WHERE performance.year=2001 AND salary.year=2001
ORDER BY performance.HR DESC
LIMIT 1
;