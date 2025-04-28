SELECT 
    year,COUNT(set_num),ROUND(AVG(num_parts),1)
FROM lego_set

GROUP BY
    year 
HAVING
    COUNT(set_num)>100
ORDER BY
    year DESC
;