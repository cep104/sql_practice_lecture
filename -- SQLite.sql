-- SQLite
SELECT franchises.name, COUNT(franchises.id) AS hero_count
FROM franchises
INNER JOIN heroes 
ON franchises.id = heroes.franchise_id
GROUP BY franchises.name;