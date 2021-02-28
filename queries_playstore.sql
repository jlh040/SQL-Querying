-- Select the app with an ID of 1880
SELECT * FROM analytics WHERE id = 1880;

-- Select the id and app name for all apps that were updated on August 1, 2018
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

-- Find the number of apps that are in each category
SELECT category, COUNT(*) FROM analytics GROUP BY category;

-- Find the top 5 most reviewed apps and the number of reviews for each
SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;

-- Find the app that has the most reviews with a rating that is atleast 4.8
SELECT app_name FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;

-- Find the average rating for each category ordered by the highest rated to lowest rated
SELECT category, AVG(rating) AS avg_rating FROM analytics GROUP BY category ORDER BY avg_rating DESC;

-- Find the name, price, and rating of the most expensive app with a rating less than 3
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;

-- Find all apps with a min install not exceeding 50 and that have a rating. Also, order them by highest rated.
SELECT * FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL ORDER BY rating DESC;

-- Find the name of all apps that are rated less than 3 with atleast 10000 reviews
SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;

-- Find the top 10 most reviewed apps that cost between 10 cents and a dollar
SELECT * FROM analytics WHERE price BETWEEN 0.10 AND 1.00 ORDER BY reviews desc LIMIT 10;

-- Find the most out of date app
SELECT app_name FROM analytics ORDER BY last_updated LIMIT 1;

-- Find the most expensive app
SELECT app_name FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);