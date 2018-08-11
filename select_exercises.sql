USE codeup_test_db;
/*albums released in the 1990s*/

SELECT name, release_date FROM albums
  WHERE release_date BETWEEN 1990 AND 1999;