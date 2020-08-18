SELECT
  students.name AS student_name,
  AVG(assignment_submissions.duration) as average_assignment_duration
FROM students
  JOIN assignment_submissions
    ON students.id = assignment_submissions.student_id 
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY SUM(assignment_submissions.duration)/COUNT(*) DESC;