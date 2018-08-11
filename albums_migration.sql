CREATE DATABASE IF NOT EXISTS codeup_test_db;
SHOW DATABASES;

CREATE USER 'codeup_test_user'@'localhost' IDENTIFIED BY 'open1973';
SELECT user from mysql.user;

GRANT ALL ON codeup_test_db.* TO 'codeup_test_user'@'localhost';
