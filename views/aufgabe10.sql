SELECT 
    english_title AS "Titel"
FROM views
WHERE
    artist LIKE '%Hokusai%'
ORDER BY
    print_number
    ;