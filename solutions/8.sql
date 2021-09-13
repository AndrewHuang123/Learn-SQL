INSERT INTO bands (name)
VALUES ('Favorite Band Name');

/* This is the query used to get the band id of the band just added */
/*
  SELECT id FROM bands
  ORDER BY id DESC LIMIT 1;
*/

INSERT INTO albums (name, release_year, band_id)
VALUES ('Favorite Album Name', 2000, 8);

INSERT INTO albums (name, release_year, band_id) VALUES ('Maroon 5', 1999, 5);

DELETE FROM albums WHERE band_id = 5;
