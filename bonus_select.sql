use bonus_db;

SELECT 'All products that have been sold ' AS 'exercise 4.1';
SELECT * FROM products
WHERE isSold = 1;


SELECT '4. All products that are over 100 ' AS 'exercise 4.2';
SELECT * FROM products
WHERE price > 100.00;

SELECT '4. Name and sold Status for  PS3 product' AS 'exercise 4.3';
SELECT name, isSold FROM products
WHERE name = 'ps3';

SELECT '4. Price for dog ' AS 'exercise 4.4';
SELECT name, price FROM products
WHERE name = 'dog';

SELECT '4. Sold status for all products over 199 ' AS 'exercise 4.5';
SELECT name, price, isSold FROM products
WHERE price > 199.00;