SELECT
district.name AS district_name,
expenditure.per_pupil_expenditure,
staff_evaluation.exemplary
FROM
district 
INNER JOIN expenditure ON district.id=expenditure.district_id
INNER JOIN staff_evaluation ON district.id=staff_evaluation.district_id
WHERE (district.type LIKE 'Public School District') AND
(staff_evaluation.exemplary IS not NULL) AND
(staff_evaluation.exemplary>(SELECT AVG(exemplary) FROM staff_evaluation)) AND
(expenditure.per_pupil_expenditure>(SELECT AVG(per_pupil_expenditure) FROM expenditure))
ORDER BY staff_evaluation.exemplary DESC, expenditure.per_pupil_expenditure DESC
;
