USE [pubs]
GO

INSERT INTO [dbo].[Item]
           ([item_id]
           ,[item_name]
           ,[item_category]
           ,[item_price]
           ,[item_qoh])
     VALUES
        ('p00001', 'elec-book-1', 'Electrical', 1000, 5),
		('p00002', 'elec-book-2', 'Electrical', 790, 2),
		('p00003', 'mech-book-1', 'Mechanical', 500, 1),
		('p00004', 'soft-book-1', 'Software', 1000, 3),
		('p00005', 'soft-book-2', 'Software', 660, 8),
		('p00006', 'soft-book-3', 'Software', 2000, 6)
	;
GO
EXEC sp_columns Item;



