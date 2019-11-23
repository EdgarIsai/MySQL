USE world;
SELECT 'Hello, World', 1 + 2;  -- this is a comment! :3
SELECT Name, LifeExpectancy AS 'Life Expectancy' FROM Country ORDER BY NAME LIMIT 5, 5; -- LIMIT number_of_rows, step(also called offset)
-- SELECT COUNT(*) FROM Country ORDER BY NAME;
/* This is a multiline comment */
# this is also a comment BUT ITS NON STANDARD, DON'T YOU DARE USE IT
SELECT Name, Code as ISO, Region, Population FROM Country ORDER BY Code;
SELECT COUNT(*) FROM Country WHERE Population > 1000000 AND Continent = "Europe";