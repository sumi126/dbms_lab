use pubs;
create table Transactions
( 
	tran_id char(10) primary key check(tran_id like '[T][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	item_id char(6) foreign key  references Item(item_id),
	cust_id char(7) foreign key  references CustomerAndSuppliers(cust_id),
	tran_type char(1) check(tran_type like '[SO]'),
	tran_quantity int check(tran_quantity >=0),
	Tran_Date SMALLDATETIME DEFAULT GETDATE()
)

-- DROP Table Transactions