
  SELECT
  product_id,
  MIN(total_amount) AS base_price
FROM transactions
GROUP BY product_id
HAVING MIN(total_amount) > (
  SELECT
    AVG(min_price)
  FROM (
    SELECT
      MIN(total_amount) AS min_price
    FROM transactions
    GROUP BY product_id
  )
)
