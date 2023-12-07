-- QUESTION 1 

--Select all actors 
SELECT *
FROM actor;

-- Finding 'Wahlberg' last_name 
select first_name,last_name
from actor
where last_name like 'Wahlberg';
-- There are TWO names that fit this query 


-- QUESTION 2 

-- Selecting all payments 
SELECT *
FROM payment;


-- Payments between 3.99 and 5.99 
SELECT customer_id,amount
FROM payment
where amount between 3.99 and 5.99;
-- Does not return any data 

-- QUESTION 3 
-- Finding what film the store has the most inventory for 
select film_id, count(film_id) as film_count
from inventory
group by film_id
order by film_id desc; 
-- There are 8 of film_id 1000 this has the most occurnaces in invesntory 

--QUESTION 4 
-- Looking for all the customers with the last_name william and summing them 
select last_name,count(customer_id)
from customer where last_name like 'Williams'
group by last_name;
-- There was not the last name william in this database so I used Wiliams and there are a total of 1 

--QUESTION 5 
-- Finding staff_id of staff member who generated the most sales 
select staff_id, count(sale_id)
from sales 
group by staff_id; 
-- No information but you could just order the data desc and see who made the mmost sales 


-- QEUSTION 6 (used cities for this there doesn't seem to be any data for districts)
select city, count(city_id)
from city 
group by city_id
-- Was a total of 600 unique items 

-- QUESTION 7
-- pulling the film id with the most actors associated 
select film_id, count(actor_id) AS actor_count
from film_actor
group by film_id
order by actor_count desc
LIMIT 1; -- Googled This way only returns 1 row 
-- Looks like film_id: 508 had the most actors (15) associated 

-- QUESTION 8 
-- Finding customers that have the last name ending in 'es' (used store there is no store_id1)
select store_id, count(*) as total_customers
from customer
where last_name like '%es'
group by store_id;


-- QUESTION 9 
select customer_id
from payment
where customer_id between 380 and 430
and rental_id > 250;
-- Was 1257 values returned 

-- QUESTION 10
-- how many ratings categories and what rating has the most associated movies total 
slect rating, COUNT(distinct film_id) as total_movies
from film
group by rating
order by total_movies desc
limit 1;
-- PG-13 had 224 movies 















