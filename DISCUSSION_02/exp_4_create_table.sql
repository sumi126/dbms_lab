create table CustomerAndSuppliers
(
	cust_id CHAR(6) primary key CHECK (cust_id like '[CS][0-9][0-9][0-9][0-9][0-9]'),
	cust_fname char(15) NOT NULL,
	cust_lname VARCHAR(15),
	cust_address text,
	cust_telno CHAR(12) CHECK(cust_telno like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	cust_city char(12) default 'Rajshahi',
	sales_amnt money check(sales_amnt>=0),
	proc_amnt money check(proc_amnt>=0)
)
