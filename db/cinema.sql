DROP TABLE tickets;
DROP TABLE films;
DROP TABLE customers;

CREATE TABLE films(
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  price DECIMAL(4,2) -- ? Data type (http://www.w3schools.com/sql/sql_datatypes_general.asp)
);

CREATE TABLE customers(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  funds DECIMAL(4,2)  -- ? Data type (as above)
);

CREATE TABLE tickets(
  id SERIAL4 PRIMARY KEY,
  film_id INT4 REFERENCES films ON DELETE CASCADE, -- so... delete a film, ticket records for that customer are also deleted -- not good?
  customer_id INT4 REFERENCES customers ON DELETE CASCADE -- as above, but for deleting customers -- also not good?
);