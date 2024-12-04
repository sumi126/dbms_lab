SELECT * FROM authors;
SELECT * FROM titleauthor;
SELECT * FROM titles;
SELECT * FROM publishers;
select (au_fname +' '+ au_lname) as authers_name,authors.city as authers_city,pub_name as publishers_name, publishers.city as publishers_city from authors, publishers
SELECT au_lname,pub_name , publishers.city
FROM authors 
join titleauthor on authors.au_id = titleauthor.au_id
join titles on titleauthor.title_id = titles.title_id
join publishers on authors.city = publishers.city where authors.city = publishers.city
