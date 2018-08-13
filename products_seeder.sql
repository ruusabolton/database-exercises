USE bonus_db;



-- create Table products (
--   id INT NOT NULL AUTO_INCREMENT,
--   name VARCHAR(50) NOT NULL,
--   price DECIMAL(5, 2) NOT NULL,
--   isSold BOOLEAN,
--   PRIMARY KEY (id)
-- );

-- show tables;

INSERT INTO products (name, price, isSold)
VALUES
  ('bike',250.00,true),
  ('cat',100.00,false),
  ('bat',30.00,true),
  ('fish',50.00,false),
  ('nes',200.00,true),
  ('n64',300.00,false),
  ('ps3',400.00,true),
  ('dog',75.00,false),
  ('drill',60.00,false);

select * from products;