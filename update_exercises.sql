USE codeup_test_db;
#increasing sales by * 10
-- UPDATE albums
-- SET sales = sales * 10;
-- SELECT sales FROM albums;
#making old albums even 100 years older
-- UPDATE albums
-- SET album_released = album_released - 100
-- WHERE album_released < 1980;
-- SELECT album_released FROM albums WHERE album_released < 1980;
-- SELECT album_name FROM albums WHERE artist_name = 'Micheal Jackson';
#changing micheal jackson to peter jackson
-- UPDATE albums
-- SET artist_name = 'Peter Jackson'
-- WHERE artist_name = 'Micheal Jackson';
SELECT 'Peter' AS 'King of Pop';
SELECT * FROM albums;