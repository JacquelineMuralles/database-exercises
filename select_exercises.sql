USE codeup_test_db;

-- In select_exercises.sql write queries to find the following information. Before each item, output a caption explaining the results:
--
-- The name of all albums by Pink Floyd.
SELECT name FROM albums WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT genre FROM albums WHERE name = 'Nevermind';

-- Which albums were released in the 1990s
SELECT * FROM albums WHERE release_date >= 1990;
SELECT * FROM albums WHERE release_date < 2000;

-- Which albums had less than 20 million certified sales
SELECT * FROM albums WHERE sales < 20.0;

-- All the albums with a genre of "Rock".
SELECT * FROM albums WHERE genre = 'Rock';

-- Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT * FROM albums LIKE genre = '%Rock%';


