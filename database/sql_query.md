# Basic SQL Queries

These are the most commonly used SQL commands to manage databases, tables, and data in **MySQL** or **MariaDB**.

<br>

###  1. Database Operations

```sql
-- Show all databases
SHOW DATABASES;

-- Create a new database
CREATE DATABASE example_db;

-- Use a specific database
USE example_db;

-- Delete a database
DROP DATABASE example_db;
```


###  2. Table Operations

```sql
-- Show all tables in the current database
SHOW TABLES;

-- Create a new table
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Describe the structure of a table
DESCRIBE users;

-- Delete a table
DROP TABLE users;

-- Rename a table
RENAME TABLE users TO customers;
```


###  3. Data Insertion

```sql
-- Insert a single record
INSERT INTO users (name, email) VALUES ('John Doe', 'john@example.com');

-- Insert multiple records
INSERT INTO users (name, email)
VALUES ('Alice', 'alice@mail.com'),
       ('Bob', 'bob@mail.com');
```


###  4. Data Retrieval (SELECT)

```sql
-- Select all columns
SELECT * FROM users;

-- Select specific columns
SELECT name, email FROM users;

-- Add filtering
SELECT * FROM users WHERE name = 'John Doe';

-- Sort results
SELECT * FROM users ORDER BY name ASC;

-- Limit results
SELECT * FROM users LIMIT 5;
```



###  5. Update and Delete Data

```sql
-- Update data
UPDATE users SET email = 'new@mail.com' WHERE id = 1;

-- Delete a specific record
DELETE FROM users WHERE id = 1;

-- Delete all records (keep table)
DELETE FROM users;
```

###  6. User Management

```sql
-- Show all MySQL users
SELECT user, host FROM mysql.user;

-- Create a new user
CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';

-- Grant privileges
GRANT ALL PRIVILEGES ON *.* TO 'username'@'localhost' WITH GRANT OPTION;

-- Revoke privileges
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'username'@'localhost';

-- Apply changes
FLUSH PRIVILEGES;
```



###  7. Joins (Basic Example)

```sql
-- Inner Join Example
SELECT orders.id, users.name, orders.amount
FROM orders
INNER JOIN users ON orders.user_id = users.id;
```

