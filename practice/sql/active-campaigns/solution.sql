
SELECT
  ad_campaign,
  COUNT(*) AS impressions,
  SUM(revenue) AS total_revenue,
  ROUND(100 * SUM(clicked)::decimal / COUNT(*), 1) AS ctr
FROM ad_impressions
GROUP BY ad_campaign
HAVING COUNT(*) > 5
ORDER BY ctr DESC, ad_campaign
