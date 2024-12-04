SELECT * FROM authors;
SELECT * FROM titleauthor;
SELECT * FROM titles;
SELECT * FROM publishers;
SELECT (au_fname +' '+ au_lname) as authers_name
FROM authors 
join titleauthor on authors.au_id = titleauthor.au_id
join titles on titleauthor.title_id = titles.title_id where royalty IN (select max(royalty) from titles)
