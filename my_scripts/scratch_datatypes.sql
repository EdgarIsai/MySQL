USE scratch;
-- CREATE TABLE test (
-- 	id INT,
--     name VARCHAR(255),
--     address VARCHAR(255),
--     city VARCHAR(255),
--     state CHAR(2),
--     zip CHAR(10)
-- );
-- DESCRIBE test;
-- SHOW TABLE STATUS;
-- SHOW CREATE TABLE test;
-- DROP TABLE IF EXISTS test;
-- DESCRIBE numerics;
-- SELECT fa + fb = 0.3 FROM numerics;
-- SET time_zone = 'SYSTEM';
-- SHOW VARIABLES LIKE '%time_zone%';
-- DROP TABLE IF EXISTS temp;
CREATE TABLE temp (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    stamp DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    name VARCHAR(64)
);

CREATE TABLE my_name (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    stamp DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    name ENUM('Edgar', 'Isai', 'Salgado')
);

DROP TABLE IF EXISTS my_name2;
CREATE TABLE my_name2 (
	id SERIAL, -- almost the same as above ID, it use big int, so it may waste some space
    stamp DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    name SET('Edgar', 'Isai', 'Salgado')-- stored in binary positions, edgar is 1, isai is 2, salgado is 4, so 3 is edgar, isai (1+2)
);

INSERT INTO temp (name) VALUES ('this');
INSERT INTO temp (name) VALUES ('that');
INSERT INTO temp (name) VALUES ('these');

INSERT INTO my_name2 (name) VALUES ('Edgar');
INSERT INTO my_name2 (name) VALUES ('Isai');
INSERT INTO my_name2 (name) VALUES ('Salgado,Salgado');
INSERT INTO my_name2 (name) VALUES (1);
INSERT INTO my_name2 (name) VALUES (2);
INSERT INTO my_name2 (name) VALUES (3);
SELECT * FROM my_name2;

    
CREATE TABLE booltest(a INTEGER, b INTEGER);
INSERT INTO booltest (a) VALUES (1);
INSERT INTO booltest (b) VALUES (0);
INSERT INTO booltest VALUES (5, 5);

SELECT * FROM booltest;
SELECT
	CASE WHEN a >= 1 THEN 'greater or equal to one' ELSE 'less than 5' END AS bool1,
    CASE WHEN b >= 1 THEN 'greater or equal to one' ELSE 'less than 5' END AS bool2
    FROM booltest
;

SELECT IF(a = 5, 'true', 'false') FROM booltest;
SHOW TABLES;