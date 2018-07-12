SELECT ar.Name, Count(*)
FROM Artist ar
JOIN Album al ON ar.ArtistId = al.ArtistId
GROUP BY al.ArtistId;