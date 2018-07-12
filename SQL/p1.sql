SELECT Count(*), g.Name 
FROM Track t
JOIN Genre g ON t.GenreId = g.GenreId
Group BY g.Name;