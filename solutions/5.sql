SELECT bands.name AS 'Band Name'
FROM bands
LEFT JOIN albums ON bands.id = albums.band_id
GROUP BY albums.band_id
HAVING COUNT(albums.id) = 0;

SELECT
  albums.name AS Name
  albums.release_year AS 'Release Year'
  SUM(songs.length) AS 'Duration'
FROM albums 
INNER JOIN songs ON albums.id = songs.album_id
GROUP BY songs.album_id
ORDER BY Duration DESC
LIMIT 1;