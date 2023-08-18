select * from playlists;

select * from playlists where Name LIKE '%'


select * from albums where ArtistId = 149;
 -- find an album for an artist

select * from artists 
join albums on artists.ArtistId = albums.ArtistId
where artists.artistId = "u2";

--find all the albums for a given artist

select * from albums;

--find all songs for a given genre

select * from genres
where genreid = "14"

--find all songs for Opera
select * from genres
join tracks on Genres.genreId = tracks.genreId
where genres.name = "Opera";

-- find all songs for genre = 5
select * from genres
join tracks on Genres.genreId = tracks.genreId
where genres.genreId = 5

--Find all the songs in a playlist - by playlist name...
select * from playlists;

--

select * from playlists
where playlists.Name = "Music"

--
select * from playlists
join playlist_track
   on playlist_track.PlaylistId = playlists.PlaylistId
join tracks
    on playlist_track.TrackId = tracks.TrackId
where playlists.Name = "Classical"

-- find all the artists for a given genre
SELECT * from genres
where Genres.Name = "Rock"

SELECT * from genres
join tracks on tracks.GenreId = genres.genreId
join albums on albums.albumId = tracks.albumId
join artists on artists.artistId = albums.artistId
where Genres.Name = "Rock"


-- Find the Playlist with the most / least songs
Select playlists.Name, count(*) from playlists
join playlist_track
on  playlists.PlaylistId = playlist_track.PlaylistId
group by playlists.Name
order by count(*) DESC
limit 1;
--least
Select playlists.Name, count(*) from playlists
join playlist_track
on  playlists.PlaylistId = playlist_track.PlaylistId
group by playlists.Name
order by count(*) ASC
limit 1;


-- Find the total for a given invoice
select * from invoices where invoices.InvoiceId = 17;
-- Find all the playlists containing a given genre
-- Find the biggest/smallest invoice amounts
select InvoiceId, min(total)  from invoices; 

select InvoiceId, max(total)  from invoices; 
--  Find the artist with the most/least songs

SELECT
  -- count(DISTINCT artists.name)
  -- artists.Name
  artists.name, count(*) as TrackCount
from artists
join albums on albums.ArtistId = artists.ArtistId
join tracks on tracks.AlbumId = albums.ArtistId
group by artists.Name
order by trackCount DESC
--- order by trackcount ASC
limit 5
---offset 5
;




 


