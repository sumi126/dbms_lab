create proc sp_showTitleAndAuthor
AS
BEGIN
SELECT "Authers Last Name" = au_lname from authors where au_id in (select au_id from titleauthor where title_id ='BU1032');
END