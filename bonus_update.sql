use bonus_db;

SELECT '5. change the price of all items before id number 3 to 0 ' AS 'exercise 5.1';
UPDATE products
SET price = 0
WHERE id < 3;

SELECT '5. change the name of ps3 to ps4, price to 500.00, and sold status to false ' AS 'exercise 5.2';
UPDATE products
SET name = 'ps4', price = 500.00, isSold = 0
WHERE name =  'ps3';

SELECT '5. change all sold values to false ' AS 'exercise 5.3';
UPDATE products
SET name = 'ps4', price = 500.00, isSold = 0
WHERE name =  'ps3';

SELECT '5. change all sold values of items over 200 to true' AS 'exercise 5.4';
UPDATE products
SET isSold = 1
WHERE price >= 200.00;

select * from products;