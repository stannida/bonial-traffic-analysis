SELECT content.title as title,
       content.brochure_id as brochure_id,
       content.pfrom as pfrom,
       content.puntil as puntil,
       content.page_count as page_count,
       content.publisher_id as publisher_id,
       sector.name as sector_name
FROM content
LEFT JOIN publisher ON content.publisher_id = publisher.id
LEFT JOIN sector ON publisher.sector_id = sector.sector_id