SELECT customer.*
FROM customer
JOIN address ON customer.address_id = address.address_id
WHERE address.state = 'Texas';


SELECT first_name, last_name, payment
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
WHERE payment.amount > 6.99;


SELECT first_name, last_name, customer_id
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    WHERE amount > 175
);


SELECT customer
FROM customer
JOIN address ON customer.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
WHERE city.city_id = 'Nepal';


SELECT staff.staff_id, first_name, last_name, COUNT(*) transaction_count
FROM staff
JOIN payment ON staff.staff_id = payment.staff_id
GROUP BY staff.staff_id, first_name, last_name
ORDER BY transaction_count DESC
LIMIT 1;


SELECT rating, COUNT(*) movie
FROM film
GROUP BY rating;


SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    WHERE amount > 6.99
    GROUP BY customer_id
    HAVING COUNT(*) = 1
);


SELECT amount, payment_id, customer_id
FROM payment
WHERE amount = 0;