SELECT
  bands.name AS 'Band',
  COUNT(songs.id) AS 'Number of Songs'
FROM bands
JOIN albums ON bands.id = albums.band_id
JOIN songs ON albums.id = songs.album_id
GROUP BY albums.band_id;

SELECT 
  bands.name AS 'Band'
  COUNT(songs.id) AS 'Number Of Songs'
FROM bands 
INNER JOIN albums ON bands.id = albums.band_id 
INNER JOIN songs ON albums.id = songs.album_id;
GROUP BY albums.band_id