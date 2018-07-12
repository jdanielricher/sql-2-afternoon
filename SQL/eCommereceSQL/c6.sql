    CREATE TABLE users(
	id integer primary key autoincrement,
  	name varchar(50),
  	email varchar(100)
);

CREATE TABLE products(
	id integer primary key autoincrement,
  	name varchar(50),
  	price float
);

CREATE TABLE orders(
	id integer,
  	product_id integer,
    FOREIGN KEY (product_id) REFERENCES products(id)
); 

INSERT INTO users(name, email)
VALUES
	("JDaniel", "jaydaniel@jd.com"),
	("Agaia", "agaia@agaia.com"),
    ("Jones", "agaia@jones.com");

INSERT INTO products(name, price)
VALUES
	("Books", 30),
    ("Playing Cards", 5),
    ("Watch", 700);

INSERT INTO orders(id, product_id)
VALUES
	(1,1),
    (1,2),
    (2,1); 

SELECT * FROM products WHERE id IN
(SELECT product_id FROM orders WHERE id IN (
SELECT id FROM orders LIMIT 1)); 

SELECT * FROM orders; 

SELECT SUM(price) FROM products WHERE id IN
(SELECT product_id FROM orders WHERE id IN (
	SELECT id FROM orders LIMIT 1)); 

ALTER TABLE orders
ADD COLUMN user_id INTEGER REFERENCES users(id); 

UPDATE orders
SET user_id = 1; 

SELECT * FROM orders WHERE user_id = 1; 

SELECT COUNT(o.id), u.id FROM orders o
JOIN users u
ON u.id = o.user_id
GROUP BY u.id;
