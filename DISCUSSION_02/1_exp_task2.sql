use pubs
SELECT * FROM authors;
SELECT * FROM titleauthor;
SELECT * FROM titles;
SELECT pub_id, pub_name, city, coalesce(state, 'ja khusi') as state FROM publishers;
SELECT au_fname, au_lname , title , pub_name
FROM authors 
join titleauthor on authors.au_id = titleauthor.au_id 
join titles on titleauthor.title_id = titles.title_id
join publishers on titles.pub_id = publishers.pub_id;

