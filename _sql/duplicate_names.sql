SELECT * FROM metroid_stops WHERE name IN (SELECT name FROM metroid_stops
GROUP BY name
HAVING COUNT(*)>1) ORDER BY name