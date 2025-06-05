SELECT
district.name AS "Schuldistrikt"
FROM
district INNER JOIN expenditure ON district.id=expenditure.district_id
ORDER BY expenditure.pupils ASC
LIMIT 1
;