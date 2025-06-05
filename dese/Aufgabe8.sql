SELECT
district.name AS Name,
expenditure.pupils AS Schüler
FROM
district INNER JOIN expenditure ON district.id=expenditure.district_id
ORDER BY expenditure.pupils DESC, district.name ASC
;