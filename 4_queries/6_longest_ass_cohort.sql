SELECT cohorts.name as name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING avg(completed_at - started_at) >= ALL(SELECT avg(completed_at - started_at)
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name);
