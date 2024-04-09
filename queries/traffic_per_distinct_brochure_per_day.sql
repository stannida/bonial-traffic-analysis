SELECT content.title as title,
       content.pfrom as pfrom,
       content.puntil as puntil,
       content.page_count as page_count,
       content.publisher_id as publisher_id,
       sector.name as sector_name,
       agg_traffic.partition_date as date,
       COUNT(DISTINCT content.brochure_id) as brochures,
       SUM(agg_traffic.clicks) as clicks,
       SUM(agg_traffic.impressions) as impressions
FROM content
INNER JOIN agg_traffic ON agg_traffic.brochure_id = content.brochure_id
LEFT JOIN publisher ON content.publisher_id = publisher.id
LEFT JOIN sector ON publisher.sector_id = sector.sector_id
GROUP BY title, pfrom, puntil, page_count, publisher_id, sector_name, date
ORDER BY date