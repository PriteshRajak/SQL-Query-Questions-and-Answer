SHOW TABLES;

# Q.1 Retrieve all the customers from the "customer" table.
SELECT * FROM customer;

# Q.2 Fetch the film titles and their rental duration from the "film" table.
SELECT title, rental_duration FROM film;

# Q.3 Get the names of all the actors from the "actor" table.
SELECT first_name, last_name FROM actor;

# Q.4 Retrieve the rental ID, rental date, and return date from the "rental" table.
SELECT rental_id, rental_date, return_date FROM rental;

# Q.5 Fetch the film titles and their respective categories from the "film" and "film_category" tables.
SELECT f.title, c.name FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id;

# Q.6 Get the total number of films available in the inventory.
SELECT COUNT(*) AS total_films FROM inventory;

# Q.7 Retrieve the staff members' first name, last name, and email from the "staff" table.
SELECT first_name, last_name, email FROM staff;

# Q.8 Fetch the rental IDs, customer IDs, and return dates for all the rentals that have not been returned yet.
SELECT rental_id, customer_id, return_date FROM rental WHERE return_date IS NULL;

# Q.9 Retrieve the names of customers who have rented a film more than once.
SELECT c.first_name, c.last_name FROM customer c
JOIN rental r ON c.customer_id = r.customer_id GROUP BY c.customer_id HAVING COUNT(*) > 1;

# Q.10 Get the total amount of revenue generated from the rentals.
SELECT SUM(amount) AS total_revenue FROM payment;

# Q.11 Retrieve the film titles and their respective languages.
SELECT f.title, l.name FROM film f
JOIN language l ON f.language_id = l.language_id;

# Q.12 Fetch the rental IDs and rental dates for all the Staff ID as 2.
SELECT rental_id, rental_date FROM rental WHERE staff_id = 2;

# Q.13 Get the names of the customers who rented a film that was longer than two hours.
SELECT c.first_name, c.last_name FROM customer c JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id JOIN film f ON i.film_id = f.film_id WHERE f.length > 120;

# Q.14 Retrieve the film titles and their rental rates.
SELECT title, rental_rate FROM film;

# Q.15 Get the rental IDs and return dates for all the rentals made by a specific customer.
SELECT rental_id, return_date FROM rental WHERE customer_id = 1;

# Q.16 Retrieve the customer names and the total number of films they have rented.
SELECT c.first_name, c.last_name, COUNT(*) AS total_rentals FROM customer c
JOIN rental r ON c.customer_id = r.customer_id GROUP BY c.customer_id;

# Q.17 Retrieve the film titles, rental durations, and the number of rentals for each film.
SELECT f.title, f.rental_duration, COUNT(r.rental_id) AS rental_count FROM film f
JOIN inventory i ON f.film_id = i.film_id JOIN rental r ON i.inventory_id = r.inventory_id GROUP BY f.title, f.rental_duration;

# Q.18 Get the customer names and the total amount they have spent on rentals.
SELECT c.first_name, c.last_name, SUM(p.amount) AS total_spent FROM customer c
JOIN payment p ON c.customer_id = p.customer_id GROUP BY c.customer_id;

# Q.19 Get the rental IDs and rental dates for all the rentals that have a customers id 597.
SELECT rental_id, rental_date FROM rental WHERE customer_id = 597;

# Q.20 Retrieve the customer names and the average rental duration for each customer.
SELECT c.first_name, c.last_name, AVG(DATEDIFF(return_date, rental_date)) AS avg_rental_duration FROM customer c
JOIN rental r ON c.customer_id = r.customer_id GROUP BY c.customer_id;
