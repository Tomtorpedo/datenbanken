SELECT AVG(expenditure.per_pupil_expenditure) AS "Mittlere Ausgaben pro Schüler"
FROM
district 
INNER JOIN expenditure ON district.id =expenditure.district_id;