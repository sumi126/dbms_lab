use pubs;
SELECT * FROM dbo.titles;
SELECT type,count(type) as Count_type, AVG(price) as avg_price, SUM(ytd_sales) as total_yearly_sales FROM dbo.titles GROUP BY type;