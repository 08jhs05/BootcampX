SELECT x.name as teacher, cohorts.name as cohort
FROM assistance_requests
JOIN teachers as x ON teacher_id = x.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE assistance_requests.id = (SELECT assistance_requests.id
  FROM assistance_requests
  JOIN teachers ON teacher_id = teachers.id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
  WHERE cohorts.name = 'JUL02' AND teachers.name = x.name
  LIMIT 1)
ORDER BY x.name;