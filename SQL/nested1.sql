SELECT * FROM Invoice WHERE Invoice IN (SELECT InvoiceLine FROM InvoiceLine WHERE UnitPrice > 0.99);
