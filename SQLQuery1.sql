--1
--SELECT
--    Id,
--   [Label]
--FROM Genre;

--2
--SELECT
--id,
--ArtistName
--FROM Artist
--ORDER BY ArtistName;

--3
--SELECT
--s.id,
--s.Title,
--s.ArtistId,
--a.ArtistName
--FROM Song s
--JOIN Artist a on s.ArtistId = a.id;

--4
--SELECT
--a.id,
--a.ArtistName
--FROM Artist a
--JOIN Album alb on alb.ArtistId=a.id  
--JOIN Genre g on alb.GenreId = g.id
--Where g.id=7;

--5
--SELECT
--a.id,
--a.ArtistName
--FROM Artist a
--JOIN Album alb on alb.ArtistId=a.id  
--JOIN Genre g on alb.GenreId = g.id
--Where g.id=4 or g.id=2;


--6 
--SELECT
--alb.id,
--alb.Title
--From Album alb
--LEFT JOIN Song s on s.AlbumId = alb.id 
--WHERE s.AlbumId IS NULL;

--7
--INSERT INTO ARTIST (ArtistName, YearEstablished) Values ('Breaking Benjamin', 1999);

--8
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, [Label], ArtistId, GenreId) VALUES ( 'We Are Not Alone', 06/29/2004, 2235, 'Hollywood', 28, 5);

--9
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) Values ('So Cold', 345, '06/25/2004', 5, 28, 23);

--10
--SELECT 
--a.Title, 
--s.Title,
--art.ArtistName
--FROM Album a 
--LEFT JOIN Song s ON s.AlbumId = a.Id
--LEFT JOIN Artist art on art.id = s.ArtistId
--WHERE s.AlbumId=23;

--11
--SELECT
--a.Title,
--Count(s.id) AS 'SONG PER ALBUM'
--From Album a
--LEFT JOIN Song s on a.id= s.AlbumId
--GROUP BY (a.Title)
 
 --12
 --SELECT
 --a.ArtistName,
 --Count(s.id) AS 'Song per Artist'
 --From Artist a 
 --LEFT JOIN Song s on s.ArtistId = a.Id
 --GROUP BY (a.ArtistName)

 --13
 --SELECT
 --g.[Label],
 --Count(s.id) AS 'Song Per Genre'
 --From Genre g 
 --LEFT JOIN Song s on s.GenreId = g.id
 --GROUP BY (g.[Label])

 --14
 --SELECT 
 --a.ArtistName,
 --Count(DISTINCT alb.[Label]) AS 'Number of Labels'
 --From Artist a 
 --LEFT JOIN Album alb ON a.id = alb.ArtistId
 --GROUP BY (a.ArtistName) 
 
 --15
 --SELECT 
 --Title,
 --AlbumLength
 --FROM Album 
 --WHERE AlbumLength = (SELECT MAX(AlbumLength) from Album);

 --16
--SELECT
--	song.Title,
--	song.SongLength,
--	album.Title
--FROM Song song
--JOIN Album album ON album.Id = song.AlbumId
--WHERE song.SongLength = (SELECT MAX (song.SongLength) FROM song)