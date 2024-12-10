use pubs;
select * from titleauthor;

select (au_fname+' '+au_lname) as authers_name from authors where au_id in(select au_id from titleauthor where title_id IN (select title_id from titles where royalty IN (select max(royalty) from titles)));