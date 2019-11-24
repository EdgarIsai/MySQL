USE world;
SELECT 'Hello, World', 1 + 2;  -- this is a comment! :3
SELECT Name, LifeExpectancy AS 'Life Expectancy' FROM Country ORDER BY NAME LIMIT 5, 5; -- LIMIT number_of_rows, step(also called offset)
-- SELECT COUNT(*) FROM Country ORDER BY NAME;
/* This is a multiline comment */
# this is also a comment BUT ITS NON STANDARD, DON'T YOU DARE USE IT
SELECT Name, Code as ISO, Region, Population FROM Country ORDER BY Code;
SELECT COUNT(*) FROM Country WHERE Population > 1000000 AND Continent = "Europe";
SELECT name FROM Country WHERE name LIKE '_a%' ORDER BY name; -- Alphabetical order where second letter is a 
SELECT name FROM Country WHERE STRCMP(name, 'France') <= 0 ORDER BY name; -- All names lesser or equal to France
-- Le REGEX
SELECT Name FROM Country WHERE Name RLIKE '^ba' ORDER BY Name;
SELECT SurfaceArea FROM Country WHERE SurfaceArea RLIKE '^1' ORDER BY Name;
SELECT CONCAT('This ', 'and ', 'that ', ':3');
SELECT CONV(16, 10, 16); -- HEX convert number, from this base to this other base
SELECT HEX(32742); -- Alternative to hex
SELECT Name FROM Country WHERE Name Like TRIM('  MEXICO  ');  -- See also LTRIM and RTRIM you can also TRIM('char' FROM 'here')
SELECT LPAD('LOL', 10, '.');
SELECT UPPER(Name) FROM Country;  -- Same as UCASE
SELECT LOWER(Name) FROM Country;  -- Same as LCASE
SELECT CONCAT(UPPER(SUBSTRING(Name, 1, 1)), LOWER(SUBSTRING(Name, 2))) FROM Country; -- SUBSTRING(string, start, how many letters 'till it stops) we start at 1 not 0, we're sick AF you can use SUBSTR too
SELECT SUBSTRING_INDEX('This is a string', " ", 1);
SELECT SOUNDEX('beer'), SOUNDEX('bear');
SELECT 'bear' SOUNDS LIKE 'beer';
SELECT ABS(-47); -- Absolute value
SELECT CEILING(12.2); -- SAME AS CEIL()
SELECT FLOOR(12.2);
SELECT ROUND(12.5);
SELECT TRUNCATE(42.97321321, 1);
SELECT PI(); -- Internally it's a full double presition value
SELECT POWER(8, 2); -- Same as POW()
SELECT SQRT(64)L;
SELECT POWER(4096, 1/4);
SELECT RAND();
SELECT SIN(2);
SELECT ASIN(1);
SELECT COS(PI());
SELECT LN(2);
SELECT LOG(2, 2);
SELECT EXP(1);
SELECT DEGREES(PI());
SELECT RADIANS(180);
SELECT 'THIS IS THE STANDART STRING';
SELECT 'THIS IS NOT THE STANDART SQL STRING';
-- These two are equivalent, in SQL you use "" for the name columns, you can't do that here in MySQL
SELECT Name, Continent FROM Country;
SELECT `Name`, `Continent` FROM Country;

SELECT 47 / 3; -- Real division
SELECT 47 DIV 3;  -- Integer division/ Floor division, it's non standard tho, but no worries
SELECT 47 MOD 3;
SELECT MOD(47, 3);
/*!
	SELECT 'MySQL executable comment' AS `pretty crazy way to comment right?`
*/;
SELECT 1 /*!+2*/;