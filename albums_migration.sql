USE codeup_test_db;
CREATE TABLE albums(
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  artist varchar(50) DEFAULT NULL,
  name varchar(50) NOT NULL,
  release_date int(4) NOT NULL,
  sales float NOT NULL,
  genre varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
);