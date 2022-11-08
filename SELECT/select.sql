show databases; -- casse sensitive

/* 

    +--------------------+
    | Database           |
    +--------------------+
    | amitdb             |
    | information_schema |
    | mysql              |
    | new_db             |
    | performance_schema |
    | pet_shop           |  <---- use pet_shop
    | sys                |
    +--------------------+

*/

use pet_shop;  -- Database changed

-- to see the current db 
select database();  -- case senstive

/* 

    +------------+
    | database() |
    +------------+
    | pet_shop   |  <---  current db
    +------------+
    1 row in set (0.00 sec)

*/

show tables; 

/* 

    +--------------------+
    | Tables_in_pet_shop |
    +--------------------+
    | cats               |
    | dogs               |
    +--------------------+
    2 rows in set (0.01 sec)

*/

SELECT * FROM cats;

/*

        +------+------+
        | name | age  |
        +------+------+
        | cat1 |    5 |   <---- one row in table
        +------+------+
        1 row in set (0.00 sec)

*/

INSERT INTO cats(name, age)
         VALUES ( "red", 3),
				("black", 5),
                ("white", 6),
                ("yellow", 7);

-- Query OK, 4 rows affected (0.00 sec)


INSERT INTO cats(name, age)
         VALUES ( "red", 3),
				("black", 5),
                ("white", 6),
                ("yellow", 7);

-- Query OK, 4 rows affected (0.00 sec)
-- Records: 4  Duplicates: 0  Warnings: 0

SELECT * FROM cats;

/* 

        +--------+------+
        | name   | age  |
        +--------+------+
        | cat1   |    5 |
        | red    |    3 |
        | black  |    5 |
        | white  |    6 |
        | yellow |    7 |
        | red    |    3 |
        | black  |    5 |
        | white  |    6 |
        | yellow |    7 |
        +--------+------+
        9 rows in set (0.00 sec)

*/


INSERT INTO cats(name, age)
       VALUES   ("orange", 1);

--    Query OK, 1 row affected (0.00 sec)



SELECT * FROM cats;

/* 

        +--------+------+
        | name   | age  |
        +--------+------+
        | cat1   |    5 |
        | red    |    3 |
        | black  |    5 |
        | white  |    6 |
        | yellow |    7 |
        | red    |    3 |
        | black  |    5 |
        | white  |    6 |
        | yellow |    7 |
        | orange |    1 |
        +--------+------+
        10 rows in set (0.00 sec)

*/