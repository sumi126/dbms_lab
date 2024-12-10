use pubs;
create table Item
(
	item_id char(6) primary key check( item_id like '[p][0-9][0-9][0-9][0-9][0-9]'),
	item_name char(12),
	item_category char(10),
	item_price float(12) check(item_price >=0),
	item_qoh int check(item_qoh >=0),
	item_last_sold date default CURRENT_TIMESTAMP
)