SELECT sector.name as sector_name,
       agg_traffic.partition_date as date,
       agg_traffic.hour as hour,
       SUM(agg_traffic.clicks) as clicks,
       SUM(agg_traffic.impressions) as impressions
FROM agg_traffic
LEFT JOIN content ON agg_traffic.brochure_id = content.brochure_id
LEFT JOIN publisher ON content.publisher_id = publisher.id
LEFT JOIN sector ON publisher.sector_id = sector.sector_id
GROUP BY sector_name, date, hour
ORDER BY date