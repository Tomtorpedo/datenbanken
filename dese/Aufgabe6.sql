SELECT 
school.name As Name
FROM 
school INNER JOIN graduation_rate ON school.id=graduation_rate.school_id
WHERE graduation_rate.graduated = 100
;