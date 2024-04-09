SELECT agg_traffic.partition_date as date,
       SUM(agg_traffic.clicks) as clicks,
       SUM(agg_traffic.impressions) as impressions
FROM agg_traffic
GROUP BY date
ORDER BY date