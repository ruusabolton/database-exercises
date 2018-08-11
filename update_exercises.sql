use codeup_test_db;

/* move pre-1980 albums to 1800s.*/

UPDATE albums
SET release_date = release_date - 80
WHERE release_date < 1980;

SELECT *
FROM albums;


