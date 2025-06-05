SELECT 
district.name AS "Schuldistrikt",
expenditure.per_pupil_expenditure AS "Ausgaben pro Schüler:in"
FROM
district
INNER JOIN expenditure ON district.id=expenditure.district_id
WHERE district.type LIKE 'Public School District'
ORDER BY expenditure.per_pupil_expenditure DESC
LIMIT 10
;