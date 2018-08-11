use codeup_test_db;

/* change Michael Jackson to Peter Jackson*/

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT *
FROM albums;



