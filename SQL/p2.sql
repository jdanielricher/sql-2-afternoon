SELECT Count(*), g.name
FROM Track t
JOIN Genre g ON g.GenreId = t.GenreId 
WHERE g.name = 'Pop' OR g.name = 'Rock'
GROUP BY g.Name;