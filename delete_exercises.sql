USE codeup_test_db;
DELETE FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE album_released > 1991;
DELETE FROM albums WHERE artist_name = 'Pink Floyd';
SELECT * FROM albums;