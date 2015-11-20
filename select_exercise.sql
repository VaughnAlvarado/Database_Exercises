USE codeup_test_db;
-- SELECT album_name FROM albums WHERE artist_name = 'Pink Floyd';
-- SELECT album_released FROM albums WHERE artist_name = 'The Beatles';
-- SELECT genre FROM albums WHERE artist_name = 'Eminem';

-- SELECT album_name FROM albums WHERE album_released BETWEEN 1990 AND 1999;
-- SELECT album_name FROM albums WHERE sales < 20;
-- SELECT * FROM albums WHERE genre = 'Rock';

SELECT album_name FROM albums;
SELECT album_name FROM albums WHERE album_released < 1980;
SELECT album_name FROM albums WHERE album_name = 'Micheal Jackson';
SELECT * FROM albums;

