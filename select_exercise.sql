
USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' as 'info';

SELECT name
FROM albums 
WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Peppers Lonely Hearts Club Band was released' as 'info';

SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' as 'info';

SELECT genre
FROM albums
WHERE name = 'Nevermind';

select 'Albums released in the 1990s' as 'info';

SELECT name, artist
FROM albums
WHERE release_date BETWEEN 1990 AND 2000;

SELECT 'Albums with less than 20 million certified sales' as 'info';

SELECT name, artist 
FROM albums 
WHERE sales < 20;

SELECT 'All the albums in the rock genre.' as 'info';

SELECT name, artist, genre
FROM albums 
WHERE genre like '%rock%';