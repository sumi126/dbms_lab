use pubs;
SELECT * FROM authors;
SELECT "name" = SUBSTRING(au_fname,1,1)+'.'+au_lname, phone FROM authors;