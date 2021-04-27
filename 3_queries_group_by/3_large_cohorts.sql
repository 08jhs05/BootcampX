SELECT cohorts.name as cohort_name, count(students.*) as student_count
FROM assignment_submissions JOIN students ON student_id = students.id
GROUP BY cohort_name
HAVING count(students.*) >= 18
ORDER BY student_count;