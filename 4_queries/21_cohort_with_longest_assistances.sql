SELECT
  cohorts.name,
  AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_time
FROM assistance_requests
  JOIN students ON assistance_requests.student_id = students.id
  JOIN cohorts ON cohorts.id = students.cohort_id
GROUP by cohorts.name
ORDER BY average_assistance_time DESC LIMIT 1;