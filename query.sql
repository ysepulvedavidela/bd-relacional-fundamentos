-- 1°Construir consultas para inserta, modificar y borrar en customer, staff y actor. --
-- // customer // --
INSERT INTO customer VALUES
	(DEFAULT, 1, 'Yeremy', 'Sepulveda', 'yeremy@mail.com', 1, true, default, default, 1);
	
UPDATE customer SET first_name = 'Alejandro' where customer_id = 600;

DELETE FROM customer WHERE customer_id = 600;

-- // staff // --
INSERT INTO staff VALUES
    (DEFAULT, 'Jean', 'Bustos', 5, 'jean.bustos@mail.com', 1, true, 'jbustos', '123456', default, null);

UPDATE staff SET first_name = 'Javier', last_name = 'Nuñez' WHERE staff_id = 3;

DELETE FROM staff WHERE staff_id = 3;

-- // actor // --
INSERT INTO actor VALUES
	(default, 'ADAM', 'Sandler', default);

UPDATE actor SET first_name = 'Adam' WHERE actor_id = 201;

DELETE FROM actor WHERE actor_id = 201;

-- 2° Listar todas las “rental” con los datos del “customer” dado un año y mes. --
SELECT c.*, r.rental_date FROM customer c
JOIN rental r
ON r.customer_id = c.customer_id
WHERE rental_date BETWEEN '2005-06-01' AND '2005-06-30'
ORDER BY rental_date ASC;

-- 3° Listar Número, Fecha (payment_date) y Total (amount) de todas las “payment”. --
SELECT payment_id Numero, payment_date Fecha, amount Total FROM payment;

-- 4° Listar todas las “film” del año 2006 que contengan un (rental_rate) mayor a 4.0.--
SELECT title, release_year, rental_rate FROM film
WHERE rental_rate > 4 AND release_year = 2006
ORDER BY release_year DESC;