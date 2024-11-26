use pubs;
SELECT * FROM dbo.titles;
SELECT type ,MAX(price) as max_price, MIN(price) as min_price , AVG(price) as avg_price, SUM(price) as total_price FROM dbo.titles GROUP BY type;