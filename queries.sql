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

