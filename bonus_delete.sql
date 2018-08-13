USE bonus_db;

select* from products;

SELECT 'delete records that have been sold ' AS 'exercise 6.1';
DELETE FROM products
WHERE isSold = 1;

SELECT 'delete all items under 50 ' AS 'exercise 6.2';
DELETE FROM products
WHERE price <= 50;

select* from products;

SELECT 'delete all records ' AS 'exercise 6.3';
DELETE  FROM products;
select* from products;
