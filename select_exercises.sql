USE codeup_test_db;
describe albums;
ALTER TABLE albums
  ADD UNIQUE (name, artist);

  DROP INDEX name ON albums;
  ,
  DROP KEY name_2,
  DROP KEY name_3,
  DROP KEY artist;

show index from albums;
/*Rock genre*/

-- SELECT name, genre FROM albums
--   WHERE genre =  'Rock';



/*Testing constraint*/
-- INSERT INTO albums (artist, name, release_date, sales, genre)
-- VALUES
-- ('Michael Jackson', 'Thriller', 1982, 47.3 , 'Pop, rock, R&B'),
-- ('AC/DC', 'Back in Black', 1980,  26.1, 'Hard rock');

use employees;
-- describe departments;
-- describe dept_emp;
-- describe dept_manager;
-- describe employees;
-- describe salaries;
-- describe titles;
