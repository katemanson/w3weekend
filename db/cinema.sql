DROP TABLE IF EXISTS tickets;
DROP TABLE IF EXISTS films;
DROP TABLE IF EXISTS customers;

CREATE TABLE films(
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  price DECIMAL(4,2), -- ? Data type (current choice based on http://www.w3schools.com/sql/sql_datatypes_general.asp)
  capacity INT2
);

CREATE TABLE customers(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  funds DECIMAL(4,2)  -- ? Data type (as above)
);

CREATE TABLE tickets(
  id SERIAL4 PRIMARY KEY,
  film_id INT4 REFERENCES films ON DELETE CASCADE,
  -- so... deleting any or all films means ticket records are also deleted - not good, but alternative is having no way to delete films for which tickets have been sold?
  customer_id INT4 REFERENCES customers ON DELETE CASCADE, 
  -- as above, but for deleting customers?
  start_time VARCHAR(255)
);