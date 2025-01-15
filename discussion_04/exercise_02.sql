CREATE TRIGGER TRG_UPDATE_ITEM ON transactions FOR INSERT
AS
BEGIN
	DECLARE @item_id char(6), @tranamount int, @tran_type char(1)
	SELECT @item_id = @item_id, @tranamount = tran_quantity, @tran_type = tran_type FROM INSERTED 
	IF (@tran_type = 'S')
	UPDATE Item set item_qoh -= @tranamount WHERE item_id = @item_id
	ELSE
	UPDATE Item set item_qoh += @tranamount WHERE item_id = @item_id 

END