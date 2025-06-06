USE sakila;
SELECT 
    MAX(length) AS max_duration,
    MIN(length) AS min_duration
FROM 
    film;
    SELECT 
    FLOOR(AVG(length) / 60) AS hours,
    MOD(ROUND(AVG(length)), 60) AS minutes
FROM 
    film;
    SELECT 
    DATEDIFF(MAX(rental_date), MIN(rental_date)) AS days_operating
FROM 
    rental;
    SELECT 
    rental_id,
    rental_date,
    customer_id,
    inventory_id,
    MONTHNAME(rental_date) AS rental_month,
    DAYNAME(rental_date) AS rental_weekday
FROM 
    rental
LIMIT 20;
SELECT 
    title,
    IFNULL(rental_duration, 'Not Available') AS rental_duration
FROM 
    film
ORDER BY 
    title ASC;
    SELECT 
    COUNT(*) AS total_films
FROM 
    film;
    SELECT 
    rating,
    COUNT(*) AS film_count
FROM 
    film
GROUP BY 
    rating;
    
    
    SELECT 
    rating,
    COUNT(*) AS film_count
FROM 
    film
GROUP BY 
    rating
ORDER BY 
    film_count DESC;
SELECT 
    rating,
    ROUND(AVG(length), 2) AS avg_duration
FROM 
    film
GROUP BY 
    rating
ORDER BY 
    avg_duration DESC;
    
    SELECT 
    rating,
    ROUND(AVG(length), 2) AS avg_duration
FROM 
    film
GROUP BY 
    rating
HAVING 
    avg_duration > 120;


    


    
    
