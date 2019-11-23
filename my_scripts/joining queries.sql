USE album;
SELECT a.artist AS Artist, a.title AS Album, t.track_number AS 'Track Num',
	t.title AS Track, t.duration AS Seconds
    FROM album AS a
    JOIN track as t ON a.id = t.album_id
    ORDER BY a.artist, a.title, t.track_number;
SELECT * FROM album;
SELECT * FROM track;

-- CREATE TABLE te-- st(t_id INT);
-- CREATE TABLE test2(t2_id INT);
-- INSERT INTO test VALUES (2);
-- INSERT INTO test VALUES (4);
-- INSERT INTO test2 VALUES (2); 

SELECT t.t_id AS t1, t2.t2_id as t2
	FROM test AS t
    JOIN test2 AS t2 ON t.t_id = t2.t2_id
    ORDER BY t.t_id;
