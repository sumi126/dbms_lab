alter proc sp_showTitleAndAuthor @title_id char(15)
AS
BEGIN
SELECT "Authers Last Name" = au_lname from authors where au_id in (select au_id from titleauthor where title_id = @title_id);
END