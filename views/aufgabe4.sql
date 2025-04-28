SELECT  COUNT(english_title) AS "Anzahl"
FROM views
WHERE
    (english_title LIKE '%Eastern Capital%')
    AND artist LIKE '%Hiroshige%'
;