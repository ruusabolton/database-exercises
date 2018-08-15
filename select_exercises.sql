-- USE codeup_test_db;
/*Rock genre*/

-- SELECT name, genre FROM albums
--   WHERE genre =  'Rock';

-- ALTER TABLE albums
--  ADD UNIQUE (artist, name);

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
describe titles;
