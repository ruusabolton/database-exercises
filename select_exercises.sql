USE codeup_test_db;
/*less than 20 mil certified sales*/

SELECT name, sales FROM albums
  WHERE sales <=  20.0;