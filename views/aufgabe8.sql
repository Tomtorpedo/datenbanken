SELECT english_title
FROM views
WHERE
    artist LIKE '%Hokusai%'
ORDER BY
    contrast DESC
LIMIT 5