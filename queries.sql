select ArtistName, YearEstablished
from Artist
where YearEstablished > 1970
and YearEstablished < 2000
order by YearEstablished desc;


select a.Title, 
			a.AlbumLength,
			a.Label as AlbumLabel, 
			ar.ArtistName, 
			ar.YearEstablished
from Album a
join Artist ar
on a.ArtistId = ar.ArtistId
join Genre g on a.GenreId = g.GenreId
;


select * from Song s
join Album al on al.AlbumId = s.AlbumId
join Artist ar on ar.ArtistId = s.ArtistId
join Genre g on g.GenreId = s.GenreId
;



insert into artist 
(ArtistName, YearEstablished)
values 
("Parquet Courts", 2013)
;




select * from Artist;

--delete from Artist where ArtistId = 36
;

update Artist 
	set ArtistName = "Jay-Z"
	where ArtistId = 27
	;
	
insert into Album
(Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
values 
("Light Up Gold", 2013, 2000, "Matador", 37, 2)
;

select * from Album;

insert into Song 
(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
values 
("Stoned and Starving", 200,  2011, 2, 37, 23)
;

select * from Song;

--SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;

SELECT al.Title, s.Title, a.ArtistName
FROM Song s 
left join Album al ON s.AlbumId = al.AlbumId
join Artist a on s.ArtistId = a.ArtistId
where a.ArtistId = 37
;

select al.Title, count(s.AlbumId) as SongInAlbum
from Album al
join Song s on s.AlbumId = al.AlbumId
group by al.Title
order by SongInAlbum desc 
;

select a.ArtistName, count(s.ArtistId) as SongInAlbum
from Artist a
join Song s on s.ArtistId = a.ArtistId
group by a.ArtistName
order by SongInAlbum desc 
;

select g.Label, count(s.GenreId) as SongInGenre
from Genre g
join Song s on s.GenreId = g.GenreId
group by g.Label
order by SongInGenre desc 
;


