create proc sp_updaatePrice @title_id char(15)
AS
BEGIN
DECLARE @price MONEY
select @price = price from titles where title_id = @title_id
set @price = 1.1*@price
if @price <= 20
update titles set price = @price where title_id = @title_id
END