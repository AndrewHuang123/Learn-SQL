CREATE TABLE songs (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  length FLOAT NOT NULL,
  album_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (album_id) REFERENCES albums(id)
);

SELECT name AS 'Band Name'
FROM bands;

SELECT * 
FROM albums
WHERE release_year IS NOT NULL
ORDER BY release_year
LIMIT 1;

SELECT DISTINCT bands.name AS 'Band Name' 
FROM bands
INNER JOIN albums ON bands.id = albums.band_id;

SELECT bands.name AS 'Band Name'
FROM bands
LEFT JOIN albums ON bands.id = albums.band_id
GROUP BY albums.band_id
HAVING COUNT(albums.id) = 0;  

SELECT 
  albums.name AS 'Name',
  albums.release_year AS 'Release Year',
  SUM(songs.length) AS 'Duration'
FROM albums 
INNER JOIN songs ON albums.id = songs.album_id
ORDER BY Duration DESC
LIMIT 1;

UPDATE albums 
SET release_year = 1986
WHERE release_year IS NULL;

INSERT INTO albums (name, release_year, band_id)
VALUES ('Favorite Album Name', 2000, 8);

DELETE FROM albums
WHERE id = 5;

SELECT AVG(length) AS 'Average Song Duration' FROM songs;

SELECT 
  albums.name AS 'Album',
  albums.release_year AS release_year,
  MAX(songs.length) AS Duration
FROM albums
INNER JOIN songs ON albums.id = songs.album_id
GROUP BY songs.album_id;

SELECT
  bands.name AS 'Band',
  COUNT(songs.id) AS 'Number of Songs'
FROM bands
JOIN albums ON bands.id = albums.band_id
JOIN songs ON albums.id = songs.album_id
GROUP BY albums.band_id;