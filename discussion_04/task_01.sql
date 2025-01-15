CREATE TRIGGER trg_UpdateAmounts ON transactions AFTER INSERT
AS
BEGIN
	DECLARE @tran_type char(1), @cust_id int, @amount money;

	SELECT @tran_type = tran_type, @cust_id = cust_id , @amount = tran_quantity from inserted
	
    IF @tran_type = 'S'
    BEGIN
        -- Update the sold_amnt for sales transactions
        UPDATE CustomerAndSuppliers
        SET sales_amnt += @amount
        WHERE cust_id = @cust_id;
    END
    ELSE
 BEGIN
        -- Update the proc_amnt for procurement transactions
        UPDATE CustomerAndSuppliers
        SET proc_amnt = proc_amnt + @amount
        WHERE cust_id = @cust_id;
		--
		print 'Successfully updated';
    END

END;
SELECT * FROM CustomerAndSuppliers;
SELECT * FROM Item;
insert into Transactions (tran_id,item_id,cust_id,tran_type,tran_quantity) VALUES
	('T100000001','p00001','C00000','S',2000);

