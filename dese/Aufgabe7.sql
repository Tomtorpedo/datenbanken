SELECT 
school.name As Name
FROM 
school INNER JOIN district ON school.district_id=district.id
WHERE district.name LIKE 'Cambridge'
;