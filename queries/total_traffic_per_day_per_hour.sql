SELECT agg_traffic.partition_date as date,
       agg_traffic.hour as hour,
       SUM(agg_traffic.clicks) as clicks,
       SUM(agg_traffic.impressions) as impressions
FROM agg_traffic
GROUP BY date, hour
ORDER BY date, hour