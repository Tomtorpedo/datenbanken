SELECT 
    COUNT(first_name) AS Anzahl
FROM players
WHERE 
    (bats LIKE 'R' AND throws LIKE 'L')
    OR (bats LIKE 'L' AND throws LIKE 'R')
;