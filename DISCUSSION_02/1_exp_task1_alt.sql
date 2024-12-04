use pubs
SELECT * FROM authors;
SELECT * FROM titleauthor;
SELECT * FROM titles;
SELECT ath.au_fname, ath.au_lname , tt.title 
FROM authors as ath
join titleauthor as tath on ath.au_id = tath.au_id 
join titles as tt  on tath.title_id = tt.title_id;
