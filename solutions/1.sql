CREATE TABLE songs (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  length FLOAT NOT NULL,
  album_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (album_id) REFERENCES albums(id)
);

SELECT bands.name AS 'Band Name' FROM bands;

SELECT * FROM albums WHERE release_year IS NOT NULL ORDER BY release_year LIMIT 1;

SELECT DISTINCT bands.name AS 'Band Name' FROM bands INNER JOIN albums ON bands.id = albums.band_id; 

SELECT bands.name AS 'Band Name' FROM bands INNER JOIN albums ON bands.id = albums.band_id GROUP BY albums.band_id HAVING COUNT(albums.id = 0)

