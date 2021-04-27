SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, completed_at - started_at as duration
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN teachers ON teachers.id = teacher_id
JOIN assignments ON assignment_id = assignments.id
ORDER BY duration;