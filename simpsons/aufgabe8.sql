SELECT
    COUNT(title) AS "Anzahl"
FROM episode
WHERE air_date < '1997-01-01'
;