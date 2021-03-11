-- Task 1
-- querying all of the entries in the Genre table
SELECT * FROM Genre;
-- Task 2
-- querying all the entries in the Artist table and order by the artist's name
SELECT * FROM Artist ORDER BY YearEstablished;

-- Task 3
-- SELECTing query that lists all the songs in the Song table and include the Artist name
SELECT s.Title , a.ArtistName
FROM Song s 
LEFT JOIN Artist a on s.ArtistId = a.Id;

-- Task 4
-- SELECTing query that lists all the Artists that have a Pop Album
Select Distinct
ar.ArtistName, g.Id, g.Label
From Artist ar
Join Album al on ar.Id = al.ArtistId
Join Genre g on al.GenreId = g.Id
Where g.Id = 7 or g.Id = 4 or g.Id = 2; -- Task 5 -- SELECTing query that lists all the Artists that have a Jazz or Rock Album

-- Task 6
-- SELECTing statement that lists the Albums with no songs
Select
al.Id, al.Title
From Album al
Left Join Song s on al.Id = s.AlbumId
Where s.AlbumId is null;
-- Task 7
-- INSERTing statement, add one of your favorite artists to the Artist table
Insert into Artist (ArtistName, YearEstablished) Values ('The Weeknd', 2010);
Insert into Artist (ArtistName, YearEstablished) Values ('Teddy Afro', 2001);


-- Task 8
-- INSERTing statement, add one, or more, albums by your artist to the Album table
Insert into Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) Values ('Ethiopia', '04/14/2017', 2890, 'Def Jam', 45, 10);

-- Task 9 
-- INSERTing statement, add some songs that are on that album to the Song table
Insert into Song(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
Select 'Marakiye', '2343', ReleaseDate, GenreId, '45', '24'
from Album
where Id = 23;

-- Task 10
-- SELECTing query that provides the song titles, album title, and artist name for all of the data I just entered in
-- Then I'm going to use LEFT JOIN keyword sequence to connect the tables, and 
-- the WHERE keyword to filter the results to the album and artist you added
Select Song.Title, ar.ArtistName as ArtistName, al.Title as AlbumTite
from Song 
Left Join Album al on Song.AlbumId = al.Id
Left Join Artist ar on Song.ArtistId = ar.Id
where Song.Title = 'Marakiye'
      or ar.ArtistName = 'Teddy Afro'
      or al.Title = 'Ethiopia';





