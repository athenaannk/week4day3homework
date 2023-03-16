--Week 5 - Wednesday
--Questions

--1. List all customers who live in Texas (use JOINs)

--ANSWER: Jennifer Davis, Kim Cruz, Richard Mccrary, Bryan Hardison, and Ian Still
--SELECT customer.first_name, customer.last_name, customer.address_id, address.district, address.address_id
--FROM customer 
--INNER JOIN address
--ON customer.address_id = address.address_id
--WHERE address.district = 'Texas';


--2. Get all payments above $6.99 with the Customer's Full Name

--ANSWER 22 TRANSACTIONS ALL PETER MENARD 
--SELECT customer.customer_id, customer.first_name, customer.last_name, payment.customer_id, payment.amount
--FROM customer
--INNER JOIN payment
--ON customer.customer_id = payment.customer_id
--WHERE  payment.amount > 3.99;


--3. Show all customers names who have made payments over $175(use subqueries)

--ANSWER: I STRUGGLED WITH THIS ONE
--SELECT customer_id, first_name, last_name, SUM(payment.amount)
--FROM (SELECT payment.payment_id, payment.customer_id, payment.amount FROM payment)
--GROUP BY customer_id HAVING SUM(payment.amount) > 175

--4. List all customers that live in Nepal (use the city table)

--ANSWER: NO DATA?

--SELECT first_name, last_name,customer.last_update, city, city.last_update
--FROM customer
--INNER JOIN city
--ON customer.last_update = city.last_update
--WHERE city = 'Nepal'


--5. Which staff member had the most transactions?

--ANSWER: Mike Hillyer 8040

--SELECT staff.staff_id, staff.first_name, staff.last_name, COUNT(rental.staff_id)
--FROM staff
--INNER JOIN rental
--ON staff.staff_id = rental.staff_id
--GROUP BY staff.staff_id
--ORDER BY COUNT(rental.staff_id) DESC;


--6. How many movies of each rating are there?

--ANSWER: NC-17: 209, G:178, PG-13:223, PG:194, R:196

--SELECT rating, COUNT(rating)
--FROM film
--GROUP BY rating

--7.Show all customers who have made a single payment above $6.99 (Use Subqueries)

--ANSWER: Peter Menard

--SELECT customer_id, first_name, last_name,active
--FROM customer
--WHERE customer_id IN(SELECT customer_id FROM payment WHERE amount >6.99) AND active =1

--8. How many free rentals did our stores give away?

--ANSWER: I think I did not do this correct or it was just that simple? NO DATA.
--SELECT amount
--FROM payment
--WHERE amount = 0.00