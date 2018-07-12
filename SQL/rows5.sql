UPDATE Track 
SET Composer = "The darkness around us"
WHERE GenreId = (SELECT GenreId FROM Genre WHERE Name = "Metal") AND Composer IS null;