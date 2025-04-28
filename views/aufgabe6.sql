SELECT ROUND(AVG(entropy),2) AS "Mittlere Entropie Hiroshige"
FROM views
WHERE
    
    artist LIKE '%Hiroshige%'
;