SHOW Columns from actor; 
DESC actor;

We can specify DB, tables and column names in a SELECT statement

select name from sakila.language;
select first_name from Actor where first_name < 'B'
select title from film where title like '%family%';

select title from film where title like '%Paul'; -- matches all string have Paul at the end
-- '%Paul%' match all that have Paul in them ( included at the start or end)

-- In general we should avoid using the % at the beginning of the pattern
-- mysql will not use index under this condition, we have performance problems

-- match exactly one wildcard character in a like clause use de underscore character 
select title from film_list where actors like 'NAT_%';

select title from film_list 
where ( category like 'Sci-Fi' OR category like 'Family')
AND rating like 'PG';

select (2+2)*3; -- prints 12
select 2+2*3; -- prints 8

select name from customer_list ORDER BY name LIMIT 10;

select address, district from address ORDER BY district, address;
select address, district from address ORDER BY district ASC, address DESC;

select id, name from customer_list ORDER BY id LIMIT 10;
select id, name from customer_list ORDER BY id LIMIT 10 OFFSET 5;

-- me quedo en pagina 110