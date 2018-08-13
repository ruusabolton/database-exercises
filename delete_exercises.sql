USE codeup_test_db;
/* albums by Whitney Houston*/

/* albums released after 1991*/

SELECT *
FROM albums
WHERE release_date > 1991;

SELECT *
FROM albums
WHERE genre = 'disco';
/* albums by Whitney Houston*/

SELECT *
FROM albums
WHERE artist = 'Whitney Houston';
