SELECT
  cohorts.name AS cohort_name,
  COUNT(*) AS student_count
FROM cohorts
  JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.name HAVING COUNT(*) >= 18;
