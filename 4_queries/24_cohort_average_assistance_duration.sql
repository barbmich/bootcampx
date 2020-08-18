SELECT
  SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
FROM assistance_requests
  JOIN students ON assistance_requests.student_id = students.id
  JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration;

SELECT AVG(total_duration) AS average_total_duration
FROM (
  SELECT
    cohorts.name as cohort,
    SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
  FROM assistance_requests
    JOIN students ON assistance_requests.student_id = students.id
    JOIN cohorts ON students.cohort_id = cohorts.id
  GROUP BY cohorts.name
  ORDER BY total_duration
) AS total_duration;