
-- to view databse

SELECT DATABASE();
/* 
    +------------+
    | database() |
    +------------+
    | NULL       |
    +------------+

*/

USE pet_shop;  -- Database changed

SELECT DATABASE();

/* 
    +------------+
    | database() |
    +------------+
    | pet_shop   |
    +------------+
*/

CREATE TABLE cats (
     name VARCHAR(25),
     age INT
);

CREATE TABLE dogs (
   name VARCHAR(25),
   breed VARCHAR(50),
   age INT
);

-- to view tables ->

SHOW TABLES;

/* 
    +--------------------+
    | Tables_in_pet_shop |
    +--------------------+
    | cats               |
    | dogs               |
    +--------------------+
    2 rows in set (0.00 sec)

*/

-- delete databse
-- DROP TABLE dogs