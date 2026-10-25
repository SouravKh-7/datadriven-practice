SELECT
  team_name,
  SUM(
    CASE
      WHEN category = 'compute' THEN 1
      ELSE 0
    END
    ) AS compute_count,
  SUM(amount) AS total_cost
FROM cost_allocs
GROUP BY team_name
