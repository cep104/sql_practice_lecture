# SQL Queries

## SQL Refresher

- SQL is a programming language that stands for: Structured Query Language
- Used to manage and organize data in all sorts of systems in which various data relationships exist.
- Can be used with database systems like: MySQL, Postgres, SQLite
- Postgres is perfect for hosting application on a domain like Heroku
- We can use terminal, text editor or external db management apps to run queries

## Common SQL Commands

- CREATE DATABASE – to create a database
- CREATE TABLE – to create tables
- SELECT – to find/extract some data from a database
- UPDATE – make adjustments and edit data
- DELETE – to delete some data

## Working in the Terminal: 

- `sqlite3 file_name.db` - creates the database file and opens it
- `CREATE TABLE table_name;` - creates a table in the file that was just created. Must include at least 1 column
- `.tables` will print the tables created
- `.schema` to look at structure of database
- `ALTER TABLE` - used to modify tables: `ALTER TABLE cats ADD COLUMN breed TEXT;`
- `DROP TABLE` - delete a table

## Working in a Text editor:

- Files must have `.sql` extension
- First create db file using `sqlite3 file_name.db`
- Create a sql query dedicated file, must be numbered `01_create_table_example.sql`
- In terminal run `sqlite3 <database file> < <query file>`

## SQL Data Types:
- TEXT
- INTEGER
- REAL - decimals
- BLOB - binary inputs 
[SQL Datatypes](https://www.w3schools.com/sql/sql_datatypes.asp)


# SQL Queries 

- A SQL Query is a statement used to access and manipulate database data
- SQL query key words are conventionally capitalized, but not required


## Adding Data 

- Use the `INSERT INTO` key word 
- `INSERT INTO <tablename> (arguments) VALUES (argument values);`

## Selecting data

- `SELECT column FROM table`

### WHERE clause

- Retrieve data based on a condition
- CAN NOT be used with aggregates
- [WHERE](https://www.w3schools.com/sql/sql_where.asp)

### ORDER BY

- Sort results, defaults to ascending order
- `SELECT column_name FROM table_name ORDER BY column_name DESC;`
- [ORDER BY](https://www.w3schools.com/sql/sql_orderby.asp)

### LIMIT 
- Used to determine the number of records you want to return from a dataset
- `SELECT column_name(s) FROM table_name WHERE condition LIMIT number;`
- [LIMIT](https://www.w3schools.com/sql/sql_top.asp)

### BETWEEN 
- Retrieve data within a given range
- `SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;`
- [BETWEEN](https://www.w3schools.com/sql/sql_between.asp)

## Updating data

- `UPDATE [table name] SET [column name] = [new value] WHERE [column name] = [value];`

## Deleting Data

- `DELETE FROM [table name] WHERE [column name] = [value];`

## Aggregate Functions

- SQL aggregate functions are SQL statements that retrieve minimum and maximum values from a column, sum values in a column, get the average of a column's values, or count a number of records that meet certain conditions.

### AS 

- Alias the return value

### COUNT, AVG, SUM

- `SELECT COUNT(column_name) FROM table_name WHERE condition;`
- `SELECT AVG(column_name) FROM table_name WHERE condition;`
- `SELECT SUM(column_name) FROM table_name WHERE condition;`
- [COUNT](https://www.w3schools.com/sql/sql_count_avg_sum.asp)

### MIN and MAX

- Minimum and maximum aggregator functions return the minimum and maximum values from a specified column respectively.
- `SELECT MIN(column_name) FROM table_name;`
- `SELECT MAX(column_name) FROM table_name;`

## GROUP BY

- Groups results by column
- Automatically sorts in ascending order
- `SELECT column_name, aggregate_function(column_name) FROM table_name WHERE column_name GROUP BY column_name;`
- [GROUP BY](https://www.w3schools.com/sql/sql_groupby.asp)

## HAVING

- Like WHERE, but can be used with aggregate
- `SELECT column_name(s) FROM table_name WHERE condition GROUP BY column_name(s) HAVING condition ORDER BY column_name(s);`
- [HAVING](https://www.w3schools.com/sql/sql_having.asp)


## Resources 

[DB BROWSER](https://sqlitebrowser.org/)
[VS CODE SQLITE](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite)
[SQL Cheat Sheet](https://www.sqltutorial.org/sql-cheat-sheet/)