SELECT 
    birth_city AS "Stadt",birth_state AS "Bundesland",birth_country AS "Land"
FROM players
WHERE 
    first_name LIKE 'Jackie'
    AND last_name LIKE 'Robinson'
    ;