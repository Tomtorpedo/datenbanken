SELECT 
School.name AS "Name",
expenditure.per_pupil_expenditure AS "Ausgaben pro Schüler:in",
graduation_rate.graduated AS "Abschlussquote"
FROM
school
INNER JOIN expenditure ON school.district_id=expenditure.district_id
INNER JOIN graduation_rate On school.id=graduation_rate.school_id
ORDER BY expenditure.per_pupil_expenditure DESC, school.name
;