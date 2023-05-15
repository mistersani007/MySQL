-- select statement (select and from) * means everthing
select * from actor;
select * from address;
select * from film;

-- return the title, discription, release year and rating
select title, description, release_year, rating
from film;
-- return the last update and last name
select last_update, last_name
from actor;
-- return the address, district, city and postal code
select address, district, city_id, postal_code
from address;

-- select distinct (used to return distinct details)
select distinct rating
from film;

-- distinct replacement cost
select distinct replacement_cost
from film;

-- distinct amount from payment
select distinct amount
from payment;

-- select where statement (the where clause is used to filter your query based on a condition)

select actor_id, last_name, first_name
from actor
where actor_id = 105;

select actor_id, last_name, first_name
from actor
where actor_id in (1,5,55,100,177);

-- return the title, release year, lenght, rental rate of R rated movies
select title, release_year, length, rating
from film
where rating = 'R';

select title, description, release_year, length, rating
from film
where length <= 50;

-- select count statement
select count (*) from film;
select count (*) from customer;
select count (*) from film
where rating = 'R';

-- LIMIT
select * from film limit 10;
select * from customer limit 5;
select * from city limit 4;

-- order by statement (arranges your result in ascending or descending order)
select first_name, last_name, email from customer
order by first_name asc;

select first_name, last_name, email from customer
order by first_name desc;

-- top 10 customers that spent the most money
select customer_id, amount from payment
order by amount desc
limit 10;

-- get the title of the movie with film id (1 - 5 using the film table)
select title, film_id from film
limit 5;

-- between (lower value to higher value)
select customer_id, staff_id, amount
from payment
where amount between 3 and 5
order by amount desc;

select count(*) from payment
where amount between 3 and 5;

-- in statement (check for value in a list)

select first_name, last_name, email
from customer
where first_name in ('Mary','Micheal');

-- the like and ilike statement 

select first_name, last_name, email
from customer
where first_name like 'Ma%';

select first_name, last_name, email
from customer
where first_name ilike '%ss%';

-- aggregate functions (count, min, max, average, sum)
select count (*) from payment;
select max (amount) from payment;
select min (amount) from payment;
select avg (amount) from payment;
select round (avg (amount),2) from payment;
select sum (amount) from payment;

select * from film;
select sum (replacement_cost) from film;
select min (rental_rate) from film;
select max (rental_rate) from film;
select count (replacement_cost) from film;
select count (*) from film;
select round (avg (replacement_cost),2) from film;
select max (replacement_cost) from film;

-- group by statement (groups your result and also works with the aggregate function)
select * from film;

select rating, count (rating)
from film
group by rating
order by count (rating) desc;

select * from payment;

select customer_id, sum(amount)
from payment
where customer_id = 341
group by customer_id;

select * from payment
where customer_id = 341;

select customer_id, sum(amount)
from payment
group by customer_id
order by sum(amount) desc
limit 10;

-- having clause (is used in conjuction with the group by clause)

select customer_id, sum(amount)
from payment
group by customer_id
having customer_id = 341;


select customer_id, sum(amount)
from payment
group by customer_id
having sum(amount) >= 180
order by sum(amount) desc;

select * from customer;

select distinct store_id from customer;

select store_id, count(customer_id)
from customer
group by store_id
having count (customer_id) > 300;

-- as statement 
select * from customer;
select first_name as Name, last_name as Surname, email as Address from customer;





