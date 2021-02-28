-- Add a product with a name of 'chair', price of 44.00 and can_be_returned of false
INSERT INTO products (name, price, can_be_returned)               
    VALUES ('chair', 44.00, false);

-- Add a product with a name of 'stool', price of 25.99 and can_be_returned of true
INSERT INTO products (name, price, can_be_returned) 
    VALUES ('stool', 25.99, true);

-- Add a product with a name of 'table', price of 124.00 and can_be_returned of false
INSERT INTO products (name, price, can_be_returned)
    VALUES ('table', 124.00, false);

-- Display all of the rows and columns in the table
SELECT * FROM products;

-- Display all of the names of the products
SELECT name FROM products;

-- Display all the names and prices of the products
SELECT name, price FROM products;

-- Added a blender to the table
INSERT INTO products (name, price, can_be_returned)
    VALUES ('blender', 54.99, false);

-- Select only the products that can be returned
SELECT * FROM products WHERE can_be_returned = true;

-- Select only the products that have a price less than 44.00
SELECT * FROM products WHERE price < 44;

-- Select products that have a price between 22.50 and 99.99;
SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;

-- Take 20 off of every product in the table
UPDATE products SET price = price - 20;

-- There's a sale! All products that are less than 25 have sold out!
DELETE FROM products WHERE price < 25;

-- The sale is over, so we return the products to their original price
UPDATE products SET price = price + 20;



