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




