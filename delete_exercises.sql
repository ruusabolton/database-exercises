USE codeup_test_db;

/* albums released after 1991*/

DELETE
FROM albums
WHERE release_date > 1991;

/* Albums where genre is disco*/
DELETE
FROM albums
WHERE genre = 'disco';

/* albums by Whitney Houston*/

DELETE
FROM albums
WHERE artist = 'Whitney Houston';
