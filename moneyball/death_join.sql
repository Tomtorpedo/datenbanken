SELECT
player.bats,
salary.year
FROM
player
CROSS JOIN performance
CROSS JOIN team
CROSS JOIN salary;