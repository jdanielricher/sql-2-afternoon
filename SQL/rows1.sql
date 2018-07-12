UPDATE Customer
SET Fax = null
WHERE Fax IS NOT null;