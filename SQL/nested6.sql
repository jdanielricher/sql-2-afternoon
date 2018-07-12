SELECT * FROM Track WHERE AlbumId IN (SELECT AlumId FROM Album WHERE ArtistId IN(
    SELECT ArtistId FROM Artist WHERE Name = "Queen"
    )
);