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

CREATE TABLE my_name2 (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    stamp DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    name SET('Edgar', 'Isai', 'Salgado')
);

INSERT INTO temp (name) VALUES ('this');
INSERT INTO temp (name) VALUES ('that');
INSERT INTO temp (name) VALUES ('these');

INSERT INTO my_name2 (name) VALUES ('Edgar');
INSERT INTO my_name2 (name) VALUES ('Isai');
INSERT INTO my_name2 (name) VALUES ('Salgado', 'Salgado');
INSERT INTO my_name2 (name) VALUES (1);
INSERT INTO my_name2 (name) VALUES (2);
INSERT INTO my_name2 (name) VALUES (3);
SELECT * FROM my_name2;
