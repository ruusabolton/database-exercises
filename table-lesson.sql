select user, host from mysql.user;
show databases;
create database if not exists tables_lesson_db;


show databases;
use tables_lesson_db;
create table if not exists flights(
  destination CHAR(3) NOT NULL,
  departs_from CHAR(3) NOT NULL,
  price DOUBLE NOT NULL,
  description TEXT
);
show tables;


ALTER TABLE flights,
ADD id INT(10)  UNSIGNED NOT NULL auto_increment first,
ADD primary key(id);

