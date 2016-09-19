USE codeup_test_db;


-- select statments 

SELECT '' AS 'all the albums in the list';
SELECT name FROM albums;

SELECT '' AS 'albums released before 1980';
SELECT name, release_date FROM albums WHERE release_date < '1980-01-01';

SELECT '' AS 'albums by Michael Jackson';
SELECT name, artist FROM albums WHERE artist = 'Michael Jackson';


-- update items 

SELECT '' AS 'make all the albums more popular';
UPDATE albums
SET sales = sales*10;
SELECT sales FROM albums;

SELECT '' AS 'move all 1980\'s albums back to the 1800\'s';
UPDATE albums
SET release_date = release_date - INTERVAL 100 YEAR
WHERE release_date < '1980-01-01';
SELECT name, release_date FROM albums WHERE release_date < '1980-01-01';

SELECT '' AS 'change Michael to Peter!';
UPDATE albums
SET artist = REPLACE(artist, 'Michael', 'Peter')
WHERE artist = 'Michael Jackson';
SELECT name, artist FROM albums WHERE artist LIKE '%Jackson%';