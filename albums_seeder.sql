USE codeup_test_db;
TRUNCATE albums;
INSERT INTO albums (artist_name,album_name,album_released,sales,genre)
VALUES 	('Micheal Jackson', 'Thriller', '1982', '43.3', 'Pop'),
		('Eagles', 'Their Greatest Hits', '1976', '32.2', 'Rock'),
		('Pink Floyd', 'Dark Side of The Moon', '1973', '22.7', 'Rock'),
		('The Beatles', 'Sgt. Peppers Lonely Hearts Club Band', '1967', '13.1', 'Rock'),
		('Eminem', 'Marshall Mathers LP', '2000', '24', 'Rap'),
		('BeeGers', 'Made up Album', '2001', '.1', 'Disco');
		SELECT * FROM albums;
