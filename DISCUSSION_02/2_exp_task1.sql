use pubs
SELECT * FROM authors;
SELECT * FROM titleauthor;
SELECT * FROM titles;
SELECT au_fname, au_lname , title 
FROM authors 
join titleauthor on authors.au_id = titleauthor.au_id 
join titles on titleauthor.title_id = titles.title_id;
